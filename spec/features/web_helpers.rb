
def sign_in_and_save_link
  visit '/'
  click_button 'login'
  click_button 'add'
  fill_in('link_title', with: 'Facebook')
  fill_in('link_url', with: 'www.facebook.com')
  fill_in('link_tags', with: 'social media')
  click_button('add')
end
