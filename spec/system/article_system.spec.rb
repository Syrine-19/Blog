require 'rails_helper'

  RSpec.describe 'article', type: :system, js: true do
    before do
    end

    it 'login' do
      visit user_session_path
      fill_in 'user[email]', with: 'user@example.com'
      fill_in 'user[password]', with: 'password'
      click_button 'Log in'
    end

    it 'create article' do

      visit new_article_path

      fill_in 'article[title]', with: 'Dashboard 2'
      fill_in 'article[body]', with: 'This is the body of the dashboard.'
      attach_file 'article[image]',  "spec/support/uploads/falaise.png"
      select 'public', from: 'article[status]'
      click_button "Create Article"

    end

    it 'update article' do 
      @article = create(:article)

      byebug
      visit article_path(@article.id)
      click_button "Modifier"
      fill_in 'article[title]', with: 'Dashboard 22'
      fill_in 'article[body]', with: 'This is the body of the dashboard.'
      attach_file 'article[image]',  "spec/support/uploads/lavan.png"
      select 'public', from: 'article[status]'
      click_button "Update Article"
    end

    
  end

