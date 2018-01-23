feature 'adding links' do
  scenario 'user can enter a link into a form' do
    visit '/links/new'
    expect(page).to have_field('new_link')
  end

  scenario 'users link is added to list' do
    visit '/links/new'
    fill_in 'new_link', with: 'https://github.com'
    click_button 'Submit'
    visit '/links'
    expect(page).to have_content('https://github.com')
  end
end
