json.array!(@logs) do |log|
  json.extract! log, :id, :info, :date, :time, :type, :user_name
  json.url log_url(log, format: :json)
end
