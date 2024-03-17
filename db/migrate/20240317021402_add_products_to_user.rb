class AddProductsToUser < ActiveRecord::Migration[7.1]
  def change
    add_reference :users, :product, null: false, foreign_key: true
  end
end
