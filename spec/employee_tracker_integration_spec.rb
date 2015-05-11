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

describe('the update division path', {:type => :feature}) do
  it('allows a user to update a divison') do
    test_div = Division.create({:section => 'sales'})
    visit('/divisions')
    fill_in('division_new_section', :with => 'production')
    click_button('Update Section Name')
    expect(page).to have_content("production")
  end
end

describe('the delete path', {:type => :feature}) do
  it('allows a user to delete a division') do
    test_div = Division.create({:section => 'sales'})
    visit('/divisions')
    click_button('Delete')
  end
end
