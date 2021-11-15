class CommentResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :user_id, :integer
  attribute :comment_details, :integer
  attribute :event_id, :integer

  # Direct associations

  belongs_to :event

  # Indirect associations

  has_one    :user

  filter :host, :integer do
    eq do |scope, value|
      scope.eager_load(:user).where(events: { host: value })
    end
  end
end
