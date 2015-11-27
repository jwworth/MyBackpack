class CreateHikes < ActiveRecord::Migration
  def change
    create_table :hikes do |t|
      t.string :name
      t.string :coordinates
      t.integer :length
      t.integer :elevation_gain
      t.integer :highest_point
      t.string :description
      t.string :parking_pass

      t.timestamps null: false
    end
  end
end
