class Ticket < ApplicationRecord
  belongs_to :movie
  belongs_to :cinemaroom
  belongs_to :booking_ticket
  has_one :seat, dependent: :destroy
end
