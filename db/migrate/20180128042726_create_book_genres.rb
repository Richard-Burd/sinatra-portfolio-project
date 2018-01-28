class CreateBookGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :book_genres do |t|
      t.integer :book_id
      t.integer :genre_id
    end
  end
end
