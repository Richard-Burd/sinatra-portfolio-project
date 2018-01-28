class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :year_published
      t.string :title
      t.string :topics
      t.integer :user_id
      t.integer :author_id
    end
  end
end
