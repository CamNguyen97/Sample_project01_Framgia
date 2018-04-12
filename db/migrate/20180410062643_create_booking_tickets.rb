class CreateBookingTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :booking_tickets do |t|
      t.boolean :status
      t.references :ticket, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
