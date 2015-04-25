class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :info
      t.string :date
      t.string :time
      t.string :type
      t.string :user_name

      t.timestamps
    end
  end
end
