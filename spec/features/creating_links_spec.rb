feature 'Adding links' do
  scenario 'Form adds links' do
    sign_in_and_save_link
    expect(page).to have_content 'www.facebook.com'
  end
end
