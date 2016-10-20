require 'spec_helper'

feature 'adds tag to the link' do
  scenario 'adds a tag when link is made', focus: true do
    sign_in_and_save_link
    link = Link.first
    expect(page).to have_content('social')
  end
end
