json.array!(@reminders) do |reminder|
  json.extract! reminder, :id, :remindDate, :remindText, :remindType, :isSnoozed, :snoozeCount
  json.url reminder_url(reminder, format: :json)
end
