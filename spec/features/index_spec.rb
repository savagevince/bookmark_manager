# frozen_string_literal: true

feature 'Visit homepage' do
  scenario 'User can visit homepage to view bookmarks' do
    visit('/')
    expect(page).to have_content "Welcome to the bookmarks homepage"
  end
end
