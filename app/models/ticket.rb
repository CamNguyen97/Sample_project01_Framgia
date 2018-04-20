class Ticket < ApplicationRecord
  belongs_to :movie
  belongs_to :cinemaroom
  belongs_to :booking_ticket
  has_one :seat, dependent: :destroy
  validates :pay_ticket, presence: true
  validates :show_time, presence: true
  validates :status, presence: true
end
