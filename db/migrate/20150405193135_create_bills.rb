class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :name
      t.string :category
      t.string :paymentType
      t.string :loginPage
      t.datetime :dueDate
      t.string :repeat
      t.float :amountLo
      t.float :amountHi
      t.integer :snoozeDuration

      t.timestamps
    end
  end
end
