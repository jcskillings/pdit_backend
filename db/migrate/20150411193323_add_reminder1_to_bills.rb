class AddReminder1ToBills < ActiveRecord::Migration
  def change
    add_column :bills, :reminder1, :datetime
    add_column :bills, :reminder2, :datetime
  end
end
