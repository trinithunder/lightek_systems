class AddPostToCategory < ActiveRecord::Migration[7.1]
  def change
    add_reference :categories, :post, null: false, foreign_key: true
  end
end
