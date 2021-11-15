class Rsvp < ApplicationRecord
  # Direct associations

  belongs_to :event

  # Indirect associations

  has_one    :user,
             through: :event,
             source: :user

  # Validations

  # Scopes

  def to_s
    response
  end
end
