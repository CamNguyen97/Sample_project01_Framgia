class Cinemaroom < ApplicationRecord
  has_many :seats, dependent: :destroy
  has_many :tickets, dependent: :destroy
  has_many :schedules_cinemarooms, dependent: :destroy
  validates :num_row_seats, presence: true,
   length: {maximum: Settings.model.cinemarooms.maximum_num_row_seats}
  validates :num_of_seats, presence: true,
   length: {maximum: Settings.model.cinemarooms.maximum_num_of_seats}
  validates :status, presence: true
end
