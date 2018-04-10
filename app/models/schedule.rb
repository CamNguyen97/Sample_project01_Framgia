class Schedule < ApplicationRecord
  has_many :schedules_cinemarooms, dependent: :destroy
  has_many :movie_schedules, dependent: :destroy
  scope :sort_alpha, ->{ limit(Settings.size_page).where(status: true).order show_case: :asc}
end
