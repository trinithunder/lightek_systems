class CreateDevices < ActiveRecord::Migration[7.1]
  def change
    create_table :devices do |t|
      t.string :name
      t.string :model
      t.string :system_name
      t.string :system_version
      t.string :identifier_for_vendor
      t.string :localized_model
      t.string :user_interface_idiom
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
