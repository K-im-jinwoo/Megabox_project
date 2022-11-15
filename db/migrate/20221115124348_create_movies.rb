class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :movie_img
      t.text :movie_title
      t.text :movie_ge
      t.integer :movie_time
      t.text :movie_desc
      t.integer :movie_age

      t.timestamps
    end
  end
end
