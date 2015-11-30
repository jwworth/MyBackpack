class AddImage < ActiveRecord::Migration
  def change
    add_column :hikes, :image, :string
  end
end
