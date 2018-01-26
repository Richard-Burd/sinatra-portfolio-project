class CreateAuthorLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :author_locations do |t|
      t.integer :author_id
      t.integer :location_id
    end
  end
end
