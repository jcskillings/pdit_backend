json.array!(@notif_types) do |notif_type|
  json.extract! notif_type, :id, :name, :destination, :notifMethod, :carrier, :verified
  json.url notif_type_url(notif_type, format: :json)
end
