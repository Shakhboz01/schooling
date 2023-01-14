json.extract! user, :id, :age, :firstname, :lastname, :phone_number, :role, :comment, :created_at, :updated_at
json.url user_url(user, format: :json)
