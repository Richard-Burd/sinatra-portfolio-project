class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :subjects
      t.integer :birth_date
      t.integer :death_date
      t.integer :user_id
    end
  end
end
