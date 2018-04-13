class Movie < ApplicationRecord
  belongs_to :studio, optional: true
  has_many :movie_schedules, dependent: :destroy
  has_many :tickets, dependent: :destroy
  has_many :movie_movietypes, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :produce_year, presence: true
  validates :broadcasing_time, presence: true
  validates :status, presence: true
  scope :sort_alpha, -> do
    where(status: true).order(name: :asc).limit Settings.model.movie.num_movie_show
  end
end
