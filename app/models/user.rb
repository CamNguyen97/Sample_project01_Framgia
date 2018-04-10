class User < ApplicationRecord
  has_many :booking_tickets, dependent: :destroy
  enum role: {user: 0, admin: 1}, _suffix: true
end
