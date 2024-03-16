class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.integer :to
      t.integer :from

      t.timestamps
    end
  end
end
