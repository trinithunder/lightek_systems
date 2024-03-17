class CreateFollows < ActiveRecord::Migration[7.1]
  def change
    create_table :follows do |t|
      t.integer :follow
      t.integer :following

      t.timestamps
    end
  end
end
