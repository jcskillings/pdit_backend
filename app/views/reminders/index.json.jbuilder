json.array!(@reminders) do |reminder|
  json.extract! reminder, :id, :remindDate, :remindText, :remindType, :isSnoozed, :snoozeCount, :bill_id, :user_name
  json.url reminder_url(reminder, format: :json)
end
