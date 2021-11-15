json.extract! rsvp, :id, :response, :user_id, :event_id, :created_at,
              :updated_at
json.url rsvp_url(rsvp, format: :json)
