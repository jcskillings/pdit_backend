class AddColumnUserNameToNotifTypes < ActiveRecord::Migration
  def change
    add_column :notif_types, :user_name, :string
  end
end
