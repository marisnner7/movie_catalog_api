class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :category
      t.string :title
      t.string :director
      t.text :cast
      t.string :country
      t.datetime :date_added
      t.string :release_year
      t.string :rating
      t.string :duration
      t.string :listed_in
      t.text :description
      t.integer :year
  
      t.timestamps
    end
  end
end
