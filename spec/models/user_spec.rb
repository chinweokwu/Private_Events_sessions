
require 'rails_helper'
RSpec.describe User, type: :model do
  context 'Validation Tests for Users' do
    let(:user) { User.new(username: 'user_test', email: 'name@example.com') }

   it 'Should not be valid if username is empty' do
      user.username = ''
      expect(user).not_to be_valid
    end

    it 'Should be valid with a email of correct format' do
        user.email = 'name@example.com'
        expect(user).to be_valid
     end
  end

  describe 'associations' do
    it { should have_many(:events).with_foreign_key(:creator_id) }
    it { should have_many(:event_attendees).with_foreign_key(:attendee_id) }
    it { should have_many(:attended_events).through(:event_attendees) }
  end
end