class User < ApplicationRecord
  has_many :booking_tickets, dependent: :destroy
  enum role: {user: 0, admin: 1}, _suffix: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PHONE_REGEX = /^((\+841|01)[2689]|(\+849|09))[0-9]{8}$/
  validates :name, presence: true,
    length: {maximum: Settings.model.users.maximum_name}
  validates :status, presence: true
  has_secure_password
  validates :password, presence: true,
    length: {minimum: Settings.model.users.minimum_password}
  validates :address, presence: true
  validates :email, presence: true,
    length: {maximum: Settings.model.users.maximum_email},
    format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
  validates :phone, presence: true,
    format: {with: VALID_PHONE_REGEX}, uniqueness: {case_sensitive: false}
  attr_accessor :remember_token, :activation_token, :reset_token
  before_save :downcase_email
  before_create :create_activation_digest
  validates :name, presence: true, length: {maximum: Settings.user_max}
  validates :email, presence: true, length: {maximum: Settings.email_max},
    format: {with: VALID_EMAIL_REGEX},
    uniqueness:{case_sensitive: false}
  has_secure_password
  validates :password, presence: true,
    length: {minimum: Settings.password_min}, allow_nil: true
	
	class << self

    def digest string
      cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
        BCrypt::Engine.cost
      BCrypt::Password.create(string, cost: cost)
  	end

  	def new_token
    	SecureRandom.urlsafe_base64
  	end
  end

	def remember
    self.remember_token = User.new_token
    update_attribute :remember_digest, User.digest(remember_token)
  end

  def current_user? user
    user == current_user
  end

  def authenticated_two? attribute, token
    digest = send "#{attribute}_digest"
    return false if digest.nil?
    BCrypt::Password.new(digest).is_password? token
  end

  def forget
    update_attributes remember_digest: nil
  end

  def activate
    update_attributes activated: :true, activated_at: Time.zone.now
  end

  def send_activation_email
    UserMailer.account_activation(self).deliver_now
  end

  def create_reset_digest
    self.reset_token = User.new_token
    update_attributes reset_digest: User.digest(reset_token),
      reset_sent_at: Time.zone.now
  end

  def send_password_reset_email
    UserMailer.password_reset(self).deliver_now
  end

  def password_reset_expired?
    reset_sent_at < Settings.num_hour.hours.ago
  end

  private
  def downcase_email
    self.email = email.downcase
  end

  def create_activation_digest
    self.activation_token  = User.new_token
    self.activation_digest = User.digest activation_token
  end
end
