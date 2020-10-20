require 'rails_helper'

RSpec.describe 'events/new', type: :view do
  before(:each) do
    assign(:event, Event.new(
                     name: 'MyString',
                     location: 'MyString',
                     description: 'MyText'
                   ))
  end

  it 'renders new event form' do
    render

    assert_select 'form[action=?][method=?]', events_path, 'post' do
      assert_select 'input[name=?]', 'event[name]'

      assert_select 'input[name=?]', 'event[location]'

      assert_select 'textarea[name=?]', 'event[description]'
    end
  end
end
