class Cinemaroom < ApplicationRecord
  has_many :seats, dependent: :destroy
  has_many :tickets, dependent: :destroy
  has_many :schedules_cinemarooms, dependent: :destroy
end
