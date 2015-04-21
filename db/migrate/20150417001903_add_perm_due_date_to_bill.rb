class AddPermDueDateToBill < ActiveRecord::Migration
  def change
    add_column :bills, :permDueDate, :datetime
  end
end
