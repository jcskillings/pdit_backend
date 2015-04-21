class CreateNotifTypes < ActiveRecord::Migration
  def change
    create_table :notif_types do |t|
      t.string :name
      t.string :destination
      t.string :type
      t.string :carrier
      t.boolean :verified

      t.timestamps
    end
  end
end
