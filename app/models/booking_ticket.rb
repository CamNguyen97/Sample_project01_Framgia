class BookingTicket < ApplicationRecord
  has_many :tickets, dependent: :destroy
  belongs_to :user
  validates :status, presence: true
end
