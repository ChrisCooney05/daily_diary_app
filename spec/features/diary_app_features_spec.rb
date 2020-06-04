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
