class CreateCinemarooms < ActiveRecord::Migration[5.1]
  def change
    create_table :cinemarooms do |t|
      t.integer :num_row_seats
      t.integer :num_of_seats
      t.text :description
      t.boolean :status

      t.timestamps
    end
  end
end
