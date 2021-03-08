require 'rails_helper'

RSpec.describe 'Display category page', type: :feature do
before(:each) do
    visit new_user_registration_path
    fill_in 'Name', with: 'gustavo'
    fill_in 'Username', with: 'gustavo'
    fill_in 'Email', with: 'gustavo@email.com'
    fill_in 'Password', with: '123456'
    fill_in 'Confirm your password', with: '123456'
    click_on 'Sign up'
    visit new_article_path
    fill_in 'Title', with: 'test-title'
    fill_in 'Text', with: 'test-text'
    check "category_1"
    attach_file('article[image]', './app/assets/images/default.jpeg')
    click_on 'Create Article'
end
    scenario 'Visit root_path' do   
    visit root_path
    expect(page).to have_content('article name: test-title')
    end
    scenario 'Visit category_path' do 
    visit category_path(1)
    expect(page).to have_content('created by:gustavo')
  end


end