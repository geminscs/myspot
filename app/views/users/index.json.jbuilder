json.array!(@users) do |user|
  json.extract! user, :id, :user_name, :password_digest, :country, :city, :phone, :email
  json.url user_url(user, format: :json)
end
