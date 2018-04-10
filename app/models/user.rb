class User < ApplicationRecord
  has_many :booking_tickets, dependent: :destroy
  enum role: {user: 0, admin: 1}, _suffix: true
  scope :sort_alpha, -> do
    where(status: true).order(name: :asc).limit Settings.size_page
  end
end
