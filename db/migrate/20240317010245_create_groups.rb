class CreateGroups < ActiveRecord::Migration[7.1]
  def change
    create_table :groups do |t|
      t.string :title
      t.integer :role_id

      t.timestamps
    end
  end
end
