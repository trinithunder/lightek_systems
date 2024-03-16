class CreateMatches < ActiveRecord::Migration[7.1]
  def change
    create_table :matches do |t|
      t.integer :to
      t.integer :from

      t.timestamps
    end
  end
end
