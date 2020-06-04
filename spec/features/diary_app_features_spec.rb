feature 'Homepage' do
  scenario 'Has My Diary on home page' do
    visit('/')
    expect(page).to have_content('My Diary')
  end
end