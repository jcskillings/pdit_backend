json.array!(@bills) do |bill|
  json.extract! bill, :id, :name, :category, :paymentType, :loginPage, :dueDate, :repeat, :amountLo, :amountHi, :snoozeDuration, :user_id, :user_name, :reminder1, :reminder2
  json.url bill_url(bill, format: :json)
end
