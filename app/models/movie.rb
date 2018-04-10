class Movie < ApplicationRecord
  belongs_to :studio
  has_many :movie_schedules, dependent: :destroy
  has_many :tickets, dependent: :destroy
  has_many :movie_movietypes, dependent: :destroy
  scope :all_for_group, -> do
        joins("join movies m  on tk.movie_id  = m.id join seats s on tk.seat_id = s.id join cinemarooms c on tk.cinemaroom_id = c.id")
    end
end
