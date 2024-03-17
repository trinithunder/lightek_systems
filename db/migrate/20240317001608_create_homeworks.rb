class CreateHomeworks < ActiveRecord::Migration[7.1]
  def change
    create_table :homeworks do |t|
      t.string :title
      t.string :due_date
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
