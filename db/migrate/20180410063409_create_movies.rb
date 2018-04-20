class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.date :produce_year
      t.integer :broadcasing_time
      t.text :description
      t.string :trailer
      t.boolean :status
      t.references :studio, index: true, foreign_key: true

      t.timestamps
    end
  end
end
