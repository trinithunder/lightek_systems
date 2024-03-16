class CreateMoneyCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :money_categories do |t|
      t.string :title

      t.timestamps
    end
  end
end
