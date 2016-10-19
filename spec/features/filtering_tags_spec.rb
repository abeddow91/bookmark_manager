feature 'filtering tags' do
  scenario 'filtering links by tags' do
    sign_in_and_save_link
    visit '/tags/bubbles'
    expect(page).to have_content 'www.facebook.com'
  end
end
