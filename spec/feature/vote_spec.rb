require 'rails_helper'

RSpec.describe 'Display votes button', type: :feature do
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
    check 'category_1'
    attach_file('article[image]', './app/assets/images/default.jpeg')
    click_on 'Create Article'
    visit category_path(1)
    find('.vote_show').click
  end
  scenario 'With article in root page before vote' do
    expect(page).to have_content('test-text')
  end
  scenario 'With article in category page before vote' do
    expect(page).to have_content('numbers of votes 1')
  end

  scenario 'With unvoted article before vote' do
    find('.unvote_show').click

    expect(page).to have_content('You can be the first vote')
  end
end
