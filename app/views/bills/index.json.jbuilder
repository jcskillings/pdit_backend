json.array!(@bills) do |bill|
  json.extract! bill, :id, :name, :category, :paymentType, :loginPage, :dueDate, :repeat, :amountLo, :amountHi, :snoozeDuration, :user_id, :user_name
  json.url bill_url(bill, format: :json)
end
