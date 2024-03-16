class AddMessageToUser < ActiveRecord::Migration[7.1]
  def change
    add_reference :users, :message, null: false, foreign_key: true
    add_reference :users, :like, null: false, foreign_key: true
  end
end
