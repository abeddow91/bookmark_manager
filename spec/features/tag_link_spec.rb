require 'spec_helper'

feature 'adds tag to the link' do
  scenario 'adds a tag when link is made' do
    visit '/'
    click_button 'login'
    click_button 'add'
    fill_in('link_title', with: 'Facebook')
    fill_in('link_url', with: 'www.facebook.com')
    fill_in('link_tags', with: 'social media')
    click_button('add')
    expect(page).to have_content('social media')
  end
end
