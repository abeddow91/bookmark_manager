require 'spec_helper'

feature 'adds tag to the link' do
  scenario 'adds a tag when link is made', focus: true do
    visit '/'
    click_button 'login'
    click_button 'add'
    fill_in('link_title', with: 'Facebook')
    fill_in('link_url', with: 'www.facebook.com')
    fill_in('link_tags', with: 'social media')
    click_button('add')
    link = Link.first
    expect(link.tags.map(&:tag_name)).to include('social media')
  end
end
