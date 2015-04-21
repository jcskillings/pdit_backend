class FixReminders < ActiveRecord::Migration
  def change
    rename_column :reminders, :remindText, :remindName
  end
end
