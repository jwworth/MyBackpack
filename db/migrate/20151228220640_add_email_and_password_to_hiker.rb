class AddEmailAndPasswordToHiker < ActiveRecord::Migration
  def change
    add_column :hikers, :email, :string
    add_column :hikers, :password_digest, :string
  end
end
