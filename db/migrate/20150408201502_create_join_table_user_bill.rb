class CreateJoinTableUserBill < ActiveRecord::Migration
  def change
    create_join_table :Users, :Bills do |t|
      t.index [:user_id, :bill_id]
      t.index [:bill_id, :user_id]
    end
    create_join_table :Bills, :Reminders do |t|
      t.index [:reminder_id, :bill_id]
      t.index [:bill_id, :reminder_id]
    end
    
    add_foreign_key(:Bills, :Users)
    add_column :Bills, :user_id, :integer
    add_foreign_key(:Bills, :Users, column: 'username' )
    add_column :Bills, :user_name, :string
    add_foreign_key(:Reminders, :Bills)
    add_column :Reminders, :bill_id, :integer
    add_foreign_key(:Reminders, :Users)
    add_foreign_key(:Bills, :Users, column: 'username' )
    add_column :Reminders, :user_name, :string
  end
end
