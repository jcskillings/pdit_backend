class AddColumnHiddenLogs < ActiveRecord::Migration
  def change
    add_column :logs, :hide, :boolean
  end
end
