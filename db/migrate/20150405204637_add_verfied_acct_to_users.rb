class AddVerfiedAcctToUsers < ActiveRecord::Migration
  def change
    add_column :users, :verifiedAcct, :boolean
  end
end
