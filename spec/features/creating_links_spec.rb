feature 'Adding links' do
  scenario 'Form adds links' do
    visit '/'
    click_button 'login'
    click_button 'add'
    fill_in('link_title', with: 'Dinosaur Comics')
    fill_in('link_url', with: 'www.qwantz.com')
    click_button('add')
    expect(page).to have_content 'www.qwantz.com'
  end
end
