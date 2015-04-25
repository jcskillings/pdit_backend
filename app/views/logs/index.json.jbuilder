json.array!(@logs) do |log|
  json.extract! log, :id, :info, :date, :time, :eventType, :user_name, :hide
  json.url log_url(log, format: :json)
end
