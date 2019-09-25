# in order to create one of these migrations, enter this in bash:
# rake db:create_migration NAME=Authors
# NOTE: you need a Rakefile in the main dir in order to do this
# The class below will be created, you can then modify the contents
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
