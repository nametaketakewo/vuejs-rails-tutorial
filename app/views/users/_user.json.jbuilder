json.extract! user, :id, :name, :age, :bio, :created_at, :updated_at
json.url user_url(user)
json.edit_url edit_user_url(user)
