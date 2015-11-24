class CreateHikes < ActiveRecord::Migration
  def change
    create_table :hikes do |t|
      t.string :name
      t.string :location
      t.string :highlights
      t.string :description
      t.boolean :completed
      t.datetime :completed
      t.string :notes

      t.timestamps null: false
    end
  end
end
