class Movie < ApplicationRecord
  belongs_to :studio
  has_many :movie_schedules, dependent: :destroy
  has_many :tickets, dependent: :destroy
  has_many :movie_movietypes, dependent: :destroy
end
