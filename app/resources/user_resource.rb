class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :integer
  attribute :hosted_events, :integer
  attribute :interested_events, :integer
  attribute :password, :string

  # Direct associations

  has_many   :events,
             foreign_key: :host

  # Indirect associations

  has_many :comments do
    assign_each do |user, comments|
      comments.select do |c|
        c.id.in?(user.comments.map(&:id))
      end
    end
  end

  has_many :rsvps do
    assign_each do |user, rsvps|
      rsvps.select do |r|
        r.id.in?(user.rsvps.map(&:id))
      end
    end
  end
end
