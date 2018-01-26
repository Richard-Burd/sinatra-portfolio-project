class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :city
      t.string :region
      t.string :polity
      t.string :today_part_of
    end
  end
end
