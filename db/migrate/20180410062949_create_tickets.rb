class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.integer :pay_ticket
      t.date :show_time
      t.boolean :status
      t.references :seat, index: true, foreign_key: true
      t.references :movie, index: true, foreign_key: true
      t.references :cinemaroom, index: true, foreign_key: true

      t.timestamps
    end
  end
end
