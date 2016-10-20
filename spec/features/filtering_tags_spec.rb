feature 'filtering tags' do
  scenario 'filtering links by tags' do
    sign_in_and_save_link
    2.times {save_link}
    visit '/tags/social'
    expect(page).to have_content 'Facebook'
    expect(page).not_to have_content 'Amazon'
  end
end

feature 'filtering tags' do
  scenario 'filtering links by multiple tags' do
    sign_in_and_save_link
    save_link
    add_second_tag
    visit '/tags/social'
    expect(page).to have_content('social photos')
    expect(page).not_to have_content('shopping tv')
  end
end
