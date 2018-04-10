class Movietype < ApplicationRecord
  has_many :movie_movietypes, dependent: :destroy
  validates :name, presence: true
  scope :sort_alpha, ->{where(status: true).order(name: :asc).limit Settings.size_page}
end
