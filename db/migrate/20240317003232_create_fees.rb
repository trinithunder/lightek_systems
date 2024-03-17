class CreateFees < ActiveRecord::Migration[7.1]
  def change
    create_table :fees do |t|
      t.string :title
      t.integer :price
      t.integer :discount_percent
      t.integer :extra_fee
      t.integer :late_fee
      t.integer :total
      t.integer :paid
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
