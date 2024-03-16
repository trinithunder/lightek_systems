class AddFirstNameToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :firstName, :string
    add_column :users, :lastName, :string
    add_column :users, :bio, :text
    add_column :users, :userName, :string
    add_column :users, :fb, :string
    add_column :users, :twitter, :string
    add_column :users, :instagram, :string
  end
end
