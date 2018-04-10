class MovieSchedule < ApplicationRecord
  belongs_to :schedule
  belongs_to :movie
end
