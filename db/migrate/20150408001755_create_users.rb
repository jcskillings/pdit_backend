class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :first
      t.string :last
      t.string :phone
      t.string :password
      t.boolean :verifiedAcct

      t.timestamps
    end
  end
end
