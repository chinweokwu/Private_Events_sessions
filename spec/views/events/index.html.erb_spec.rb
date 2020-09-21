require 'rails_helper'
# rubocop:disable Layout/FirstArgumentIndentation
# rubocop:disable Layout/ClosingParenthesisIndentation
RSpec.describe 'events/index', type: :view do
  let(:creator) { User.new }
  before(:each) do
    assign(:events, [
             Event.create!(
              name: 'MyString',
              location: 'MyString',
              description: 'MyText',
              date: Date.today,
              creator: creator
             ),
             Event.create!(
              name: 'MyString',
              location: 'MyString',
              description: 'MyText',
              date: Date.today,
              creator: creator
             )
           ])
  end

  # it 'renders a list of events' do
  #   render
  #   assert_select 'tr>td', text: 'Name'.to_s
  #   assert_select 'tr>td', text: 'Location'.to_s
  #   assert_select 'tr>td', text: 'MyText'.to_s
  # end
end
# rubocop:enable Layout/FirstArgumentIndentation
# rubocop:enable Layout/ClosingParenthesisIndentation
