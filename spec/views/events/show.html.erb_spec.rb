require 'rails_helper'

RSpec.describe 'events/show', type: :view do
  let(:creator) { User.new }
  before(:each) do
    allow(attend).to receive(:current_user).and_return(user)
    @event = assign(:event, Event.create!(
                              name: 'Name',
                              location: 'Location',
                              description: 'MyText',
                              date: Date.today,
                              creator: creator
                            ))
  end

  # it 'renders attributes in <p>' do
  #   render
  #   expect(rendered).to match(/Name/)
  #   expect(rendered).to match(/Location/)
  #   expect(rendered).to match(/MyText/)
  # end
end
