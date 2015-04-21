class RenamePasswordDigetsColumn < ActiveRecord::Migration
  def change
    rename_column :users, :password_digest, :provider
  end
end
