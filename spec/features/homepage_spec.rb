# frozen_string_literal: true

feature 'Visit homepage' do
  scenario 'User can visit homepage to view bookmarks' do
    visit('/')
    expect(page).to have_content "You've found homepage!"
  end
end
