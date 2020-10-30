json.extract! user, :id, :user_name, :first_name, :last_name, :age, :email, :string, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
