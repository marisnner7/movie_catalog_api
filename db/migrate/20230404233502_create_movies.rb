class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.integer :year
      t.string :genre
      t.string :country
      t.datetime :date_added

      t.timestamps
    end
  end
end
