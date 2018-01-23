feature 'user can see bookmarks' do
  scenario 'user can see a list of links' do
    Link.create(url: 'https://github.com')
    visit '/'
    expect(page).to have_content('https://github.com')
    last = Link.last(url: 'https://github.com')
    last.destroy
  end
end
