class CreateHikers < ActiveRecord::Migration
  def change
    create_table :hikers do |t|
      t.string :name
      t.string :location
      t.string :bio

      t.timestamps null: false
    end
  end
end
