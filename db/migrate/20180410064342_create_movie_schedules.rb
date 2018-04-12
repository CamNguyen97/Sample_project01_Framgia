class CreateMovieSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :movie_schedules do |t|
      t.references :movie, index: true, foreign_key: true
      t.references :schedule, index: true, foreign_key: true

      t.timestamps
    end
  end
end
