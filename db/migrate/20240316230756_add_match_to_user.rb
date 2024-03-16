class AddMatchToUser < ActiveRecord::Migration[7.1]
  def change
    add_reference :users, :match, null: false, foreign_key: true
  end
end
