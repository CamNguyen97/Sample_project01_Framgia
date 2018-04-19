class Seat < ApplicationRecord
  has_one :ticket, dependent: :destroy
  belongs_to :cinemaroom
  enum seat_type: {"Chair":false, "Chair VIP":true }
  scope :sort_alpha, ->{ limit(Settings.size_page).where(status: true).order cinemaroom_id: :asc}
end
