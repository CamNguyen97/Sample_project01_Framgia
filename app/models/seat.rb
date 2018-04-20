class Seat < ApplicationRecord
  has_one :ticket, dependent: :destroy
  belongs_to :cinemaroom
  validates :seat_type, presence: true
  validates :status, presence: true
end
