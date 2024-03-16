class CreateLikes < ActiveRecord::Migration[7.1]
  def change
    create_table :likes do |t|
      t.integer :to
      t.integer :from

      t.timestamps
    end
  end
end
