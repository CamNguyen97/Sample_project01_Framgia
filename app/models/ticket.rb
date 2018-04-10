class Ticket < ApplicationRecord
  belongs_to :movie
  belongs_to :cinemaroom
  belongs_to :booking_ticket
  enum seat_type: {"Chair":false, "Chair VIP":true }
  has_one :seat, dependent: :destroy
  scope :sort_alpha, -> do
    self.where(status: true).order(show_time: :asc).limit Settings.size_page
  end

end
