class Event < ApplicationRecord
  # Direct associations

  belongs_to :user,
             foreign_key: "host"

  has_many   :comment,
             dependent: :destroy

  has_many   :rsvps,
             dependent: :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    date
  end
end
