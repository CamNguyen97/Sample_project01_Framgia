class Seat < ApplicationRecord
  has_one :ticket, dependent: :destroy
  belongs_to :cinemaroom
  enum seat_type: {"Chair": true, "Chair VIP": false}
  scope :sort_alpha_seat, ->{order seat_type: :asc}
end
