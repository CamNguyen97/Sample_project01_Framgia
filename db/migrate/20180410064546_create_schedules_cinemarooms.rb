class CreateSchedulesCinemarooms < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules_cinemarooms do |t|
      t.references :cinemaroom, index: true, foreign_key: true

      t.timestamps
    end
  end
end
