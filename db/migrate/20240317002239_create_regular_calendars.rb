class CreateRegularCalendars < ActiveRecord::Migration[7.1]
  def change
    create_table :regular_calendars do |t|
      t.string :type

      t.timestamps
    end
  end
end
