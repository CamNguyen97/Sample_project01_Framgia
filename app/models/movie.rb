class Movie < ApplicationRecord
  belongs_to :studio
  has_many :movie_schedules, dependent: :destroy
  has_many :tickets, dependent: :destroy
  has_many :movie_movietypes, dependent: :destroy
  scope :sort_alpha, ->{ limit(Settings.size_page).where(status: true).order name: :asc}
end
