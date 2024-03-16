class CreateCards < ActiveRecord::Migration[7.1]
  def change
    create_table :cards do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :card_number
      t.integer :cvv
      t.string :valid_through

      t.timestamps
    end
  end
end
