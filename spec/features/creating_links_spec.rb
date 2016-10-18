feature 'Adding links' do
  scenario 'Form adds links' do
    visit '/'
    click_button 'login'
    click_button 'Add link'
    fill_in('Link', with: 'www.facebook.com')
    click_button('add')
    expect(page).to have_content 'www.facebook.com'
  end

end
