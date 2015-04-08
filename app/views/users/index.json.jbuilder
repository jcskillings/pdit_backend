json.array!(@users) do |user|
  json.extract! user, :id, :username, :email, :first, :last, :phone, :password, :verifiedAcct
  json.url user_url(user, format: :json)
end
