json.extract! user, :id, :fname, :lname, :bdate, :email, :encrypted_password, :created_at, :updated_at
json.url user_url(user, format: :json)
