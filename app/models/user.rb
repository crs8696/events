class User < ApplicationRecord
  # Direct associations

  has_many   :events,
             foreign_key: "host",
             dependent: :destroy

  # Indirect associations

  has_many   :comments,
             through: :events,
             source: :comment

  has_many   :rsvps,
             through: :events,
             source: :rsvps

  # Validations

  # Scopes

  def to_s
    name
  end
end
