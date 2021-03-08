require 'rails_helper'

RSpec.describe 'create new article with/without info', type: :feature do
 @category = Category.create(name:"Action", priority:1)
 
 before(:each) do
    visit new_user_registration_path
    fill_in 'Name', with: 'gustavo'
    fill_in 'Username', with: 'gustavo'
    fill_in 'Email', with: 'gustavo@email.com'
    fill_in 'Password', with: '123456'
    fill_in 'Confirm your password', with: '123456'
    click_on 'Sign up'
 
end
  scenario 'Create article with complete information' do
   
    visit new_article_path
    fill_in 'Title', with: 'test-title'
    fill_in 'Text', with: 'test-text'
    check "category_1"
    attach_file('article[image]', './app/assets/images/default.jpeg')
    click_on 'Create Article'
    expect(page).to have_content('Article was successfully created.')
  end


  
  scenario 'Create article without text information' do
    visit new_article_path
    fill_in 'Title', with: 'test-title'
    fill_in 'Text', with: ''
    check "category_1"
    attach_file('article[image]', './app/assets/images/default.jpeg')
    click_on 'Create Article'
    expect(page).to have_content('Please review the problems below:')
  end
  scenario 'Create article without title information' do
    visit new_article_path
    fill_in 'Title', with: ''
    fill_in 'Text', with: 'test-text'
    check "category_1"
    attach_file('article[image]', './app/assets/images/default.jpeg')
    click_on 'Create Article'
    expect(page).to have_content('Please review the problems below:')
  end
  scenario 'Create article without category information' do
    visit new_article_path
    fill_in 'Title', with: 'test-title'
    fill_in 'Text', with: 'test-text'
    attach_file('article[image]', './app/assets/images/default.jpeg')
    click_on 'Create Article'
    expect(page).to have_content('Please review the problems below:')
  end
  scenario 'Create article without image information' do
    visit new_article_path
    fill_in 'Title', with: 'test-title'
    fill_in 'Text', with: 'test-text'
    check "category_1"
    click_on 'Create Article'
    expect(page).to have_content('Please review the problems below:')
  end
end
RSpec.describe 'create new article without user', type: :feature do
  scenario 'Create article with unvalid user' do
    
     visit new_user_registration_path
     fill_in 'Name', with: 'gustdavo'
     fill_in 'Username', with: 'gustavo'
     fill_in 'Email', with: 'gusstavo@email.com'
     fill_in 'Password', with: ''
     fill_in 'Confirm your password', with: '123456'
     click_on 'Sign up'
     visit new_article_path
     fill_in 'Title', with: 'test-title'
     fill_in 'Text', with: 'test-text'
     check "category_1"
     click_on 'Create Article'
     expect(page).to have_content('Hello')
  end


end