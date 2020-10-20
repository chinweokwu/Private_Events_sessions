require 'rails_helper'

RSpec.describe EventAttendee, type: :model do
  describe 'Associations to EventAttendee' do
    it { should belong_to(:attendee) }
    it { should belong_to(:attended_event) }
  end

  describe 'Validations to EventAttendee' do
    it { should validate_presence_of(:attendee_id) }
    it { should validate_presence_of(:attended_event_id) }
  end
end
