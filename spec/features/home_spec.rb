require 'rails_helper'

RSpec.describe 'Home features' do
  it 'displays home page' do
    visit('http://localhost:3000/')
    expect(page).to have_content('Home Page')
  end

  it 'displays login and signup pages ' do
    visit('http://localhost:3000/')
    click_link('Log in')
    expect(current_path).to eql('/login')
    expect(page).to have_content('Log in')
    click_link('Sign up')
    expect(current_path).to eql('/signup')
    expect(page).to have_content('New User')
  end
end
