class Movietype < ApplicationRecord
  has_many :movie_movietypes, dependent: :destroy
   scope :sort_alpha, ->{limit(Settings.size_page).where(status: true).order name: :asc}
end
