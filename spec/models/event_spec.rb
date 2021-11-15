require "rails_helper"

RSpec.describe Event, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:user) }

    it { should have_many(:comment) }

    it { should have_many(:rsvps) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
  end
end
