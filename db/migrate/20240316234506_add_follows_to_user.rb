class AddFollowsToUser < ActiveRecord::Migration[7.1]
  def change
    add_reference :users, :follows, null: false, foreign_key: true
  end
end
