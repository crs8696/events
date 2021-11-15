json.extract! user, :id, :name, :hosted_events, :interested_events, :password,
              :created_at, :updated_at
json.url user_url(user, format: :json)
