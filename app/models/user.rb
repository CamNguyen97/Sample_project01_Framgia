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
end
