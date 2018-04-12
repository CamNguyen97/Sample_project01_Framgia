class Schedule < ApplicationRecord
  has_many :schedules_cinemarooms, dependent: :destroy
  has_many :movie_schedules, dependent: :destroy
end
