require 'spec_helper'

feature 'Saved links are visible on login' do
  scenario 'front page has login section' do
  visit '/'
  expect(page).to have_button 'login'
  end
end

feature 'clicking submit on login takes you to your links' do
  scenario 'click login, displays links' do
  Link.create(title: 'Reddit', url: 'www.reddit.com')
  visit '/links'
  expect(page).to have_content 'www.reddit.com'
  end
end
