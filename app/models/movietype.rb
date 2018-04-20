class Movietype < ApplicationRecord
  has_many :movie_movietypes, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :status, presence: true
end
