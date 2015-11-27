class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :hiker_id
      t.integer :hike_id
      t.datetime :completed_at
      t.string :notes

      t.timestamps null: false
    end
  end
end
