feature 'user can see bookmarks' do
  scenario 'user can see a list of links' do
    Link.create(url: 'https://github.com')
    visit '/links'
    expect(page).to have_content('https://github.com')
    remove_item
  end
end
