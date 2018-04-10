class CreateSeats < ActiveRecord::Migration[5.1]
  def change
    create_table :seats do |t|
      t.boolean :seat_type
      t.boolean :status
      t.references :cinemaroom, index: true, foreign_key: true

      t.timestamps
    end
  end
end
