class Schedule < ApplicationRecord
  has_many :schedules_cinemarooms, dependent: :destroy
  has_many :movie_schedules, dependent: :destroy
  validates :show_case, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :date_movie, presence: true
  validates :status, presence: true
end
