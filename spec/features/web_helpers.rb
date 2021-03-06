
def sign_in_and_save_link
  visit '/links'
  click_button 'add'
  fill_in('link_title', with: 'Facebook')
  fill_in('link_url', with: 'www.facebook.com')
  fill_in('link_tags', with: 'social')
  click_button('add')
end

def save_link
  visit '/links'
  click_button 'add'
  fill_in('link_title', with: 'Amazon')
  fill_in('link_url', with: 'www.amazon.com')
  fill_in('link_tags', with: 'shopping')
  click_button('add')
end

def add_second_tag
  visit '/links'
  click_button 'add'
  fill_in('link_title', with: 'Facebook')
  fill_in('link_url', with: 'www.facebook.com')
  fill_in('link_tags', with: 'social photos')
  click_button('add')
end
