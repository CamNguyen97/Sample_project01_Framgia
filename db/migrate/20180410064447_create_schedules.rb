class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.integer :show_case
      t.date :start_time
      t.date :end_time
      t.date :date_movie
      t.boolean :status

      t.timestamps
    end
  end
end
