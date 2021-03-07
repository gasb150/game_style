require 'rails_helper'
RSpec.describe 'create new user', type: :feature do
  
  scenario 'Create new user with valid user and valid inputs' do
    visit new_user_registration_path
    fill_in 'Name', with: 'gustavo'
    fill_in 'Username', with: 'gustav'
    fill_in 'Email', with: 'gustavo@email.com'    
    fill_in 'Password', with: '123456'
    fill_in 'Confirm your password', with: '123456'
    click_on 'Sign up'
    expect(page).to have_content('Welcome! You have signed up successfully.')
  end

  scenario 'Create log in user with valid user and valid inputs' do
    @user = User.create(name: 'gustavo', username: 'gustav', email: 'gustavo@email.com', password: '123456')
    visit new_user_session_path	
    fill_in 'Email', with: 'gustavo@email.com'    
    fill_in 'Password', with: '123456'
    click_on 'Log in'
    expect(page).to have_content('Signed in successfully.')

  end
  scenario 'Create log in user with valid user and valid inputs' do
    @user = User.create(name: 'gustavo', username: 'gustav', email: 'gustavo@email.com', password: '123456')
    visit new_user_session_path	
    fill_in 'Email', with: 'gustavo@email.com'    
    fill_in 'Password', with: '123456'
    click_on 'Log in'
    expect(page).to have_content(@user.username)

  end
  scenario 'Create log in user with unvalid user and valid inputs' do
    @user = User.create(name: 'gustavo', username: 'gustav', email: 'gustavo@email.com', password: '123456')
    visit new_user_session_path	
    fill_in 'Email', with: 'gustavo@email.com'    
    fill_in 'Password', with: '1456'
    click_on 'Log in'
    expect(page).to have_content('Invalid Email or password')

  end
  scenario 'Sing out user with valid user and valid inputs' do
    @user = User.create(name: 'gustavo', username: 'gustav', email: 'gustavo@email.com', password: '123456')
    visit new_user_session_path	
    fill_in 'Email', with: 'gustavo@email.com'    
    fill_in 'Password', with: '123456'
    click_on 'Log in'
    click_on 'Sign out'
    expect(page).to have_content('Signed out successfully.')
  end

end