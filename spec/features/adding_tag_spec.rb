feature 'adding tags' do
  scenario 'User can add a tag to the link' do
    visit '/links/new'
    fill_in 'new_link', with: 'https://github.com'
    fill_in 'title', with: 'github'
    fill_in 'tag', with: 'coding'
    click_button 'Submit'
    visit '/links'
    link = Link.first
    expect(link.tags.map(&:name)).to include('coding')
  end
end
