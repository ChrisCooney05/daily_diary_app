# frozen_string_literal: true

feature 'Homepage' do
  scenario 'Has My Diary on home page' do
    visit('/')
    expect(page).to have_content('My Diary')
  end

  scenario 'Has button to take the user to Add Diary Entry' do
    visit('/')
    expect(page).to have_button('Add New Entry')
  end
end

feature 'Add New Entry' do 
  scenario 'Should have a text field to add a dairy entry' do
    visit('/add-entry') 
    expect(page).to have_field('new_entry')
  end

  scenario 'Should have a text field to add a dairy title' do
    visit('/add-entry') 
    expect(page).to have_field('title')
  end

  scenario 'Confirms that an entry has been saved' do
    visit('/add-entry') 
    fill_in 'title', with: 'Test title'
    fill_in 'new_entry', with: 'this is a test'
    click_button('Add Entry')
    expect(page).to have_content('New Entry Saved')
  end
end
