require 'rails_helper'

RSpec.describe EventAttendee, type: :model do
  describe 'Associations' do
    it { should belong_to(:attendee) }
    it { should belong_to(:attended_event) }
  end
end