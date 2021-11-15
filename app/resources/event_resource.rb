class EventResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :date, :date
  attribute :time, :string
  attribute :host, :integer
  attribute :location, :integer
  attribute :details, :integer
  attribute :comments, :integer
  attribute :rsvp, :integer

  # Direct associations

  belongs_to :user,
             foreign_key: :host

  has_many   :comment

  has_many   :rsvps

  # Indirect associations
end
