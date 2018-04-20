class CreateMovietypes < ActiveRecord::Migration[5.1]
  def change
    create_table :movietypes do |t|
      t.string :name
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
