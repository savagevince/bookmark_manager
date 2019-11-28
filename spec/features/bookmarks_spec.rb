feature 'Visit bookmark page' do
  scenario 'User can view bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content "http://www.google.com"
  end
end
