class LengthToFloat < ActiveRecord::Migration
  def change
    change_column :hikes, :length, :float
  end
end
