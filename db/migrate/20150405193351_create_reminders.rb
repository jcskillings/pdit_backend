class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.datetime :remindDate
      t.string :remindText
      t.string :remindType
      t.boolean :isSnoozed
      t.integer :snoozeCount

      t.timestamps
    end
  end
end
