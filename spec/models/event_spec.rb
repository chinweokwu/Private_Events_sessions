require 'date'
require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'Validations to event' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:date) }
    it { should validate_presence_of(:location) }
  end
  describe 'Associations to event model' do
    it { should belong_to(:creator).class_name('User') }
    it { should have_many(:attendees) }
  end

  let(:creator) { User.create!(username: 'AnyName', email: 'anyname@example.com') }
  subject do
    Event.new(name: 'Birthday',
              location: 'nigeria',
              description: 'Lorem ipsum',
              date: Time.now + 1.week,
              creator_id: 1)
  end
  before { subject.save }

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a location' do
    subject.location = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a description' do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a creator_id' do
    subject.creator_id = nil
    expect(subject).to_not be_valid
  end
end
