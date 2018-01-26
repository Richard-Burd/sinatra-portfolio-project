class CreateAuthorPeriods < ActiveRecord::Migration[5.1]
  def change
    create_table :author_periods do |t|
      t.integer :author_id
      t.integer :period_id
    end
  end
end
