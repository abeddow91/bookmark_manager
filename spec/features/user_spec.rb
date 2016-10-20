require 'spec_helper'

feature 'Adding users' do
  scenario 'checks user count has increased by 1' do
    visit '/'
    fill_in('username', with: 'anna@gmail.com')
    expect{click_button 'login'}.to change{User.count}.by(1)
  end

end

feature 'Adding users' do
  scenario 'checks user is welcomed' do
    visit '/'
    fill_in('username', with: 'anna@gmail.com')
    click_button 'login'
    expect(page).to have_content('Welcome anna@gmail.com!')
  end



end
feature 'Password confirmation' do
  scenario 'when user signing up' do
    visit '/'
    fill_in('username', with: 'anna@gmail.com')
    fill_in('password', with: 'password')
    click_button 'login'
    expect(page).to have_content('Incorrect username or password')
  end
end
