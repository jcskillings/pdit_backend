class ChangeTypeColumnNames < ActiveRecord::Migration
  def change
    rename_column :notif_types, :type, :notifMethod
    rename_column :logs, :type, :eventType
  end
end
