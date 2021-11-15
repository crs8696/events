json.extract! event, :id, :date, :time, :host, :location, :details, :comments,
              :rsvp, :created_at, :updated_at
json.url event_url(event, format: :json)
