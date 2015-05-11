require('capybara/rspec')
require('./app')
require('spec_helper')
require('pry')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('the index page path', {:type => :feature}) do
  it('allows a user to create divisions') do
    visit('/divisions')
    click_link('Add Division')
    fill_in('division_section', :with => 'sales')
    click_button('Add new Division')
    expect(page).to have_content("sales")
  end
end
