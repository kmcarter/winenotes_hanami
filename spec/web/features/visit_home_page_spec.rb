require 'features_helper'

feature 'Visiting the home page' do
  scenario 'is successful' do
    visit '/'
    expect(page).to have_content('WineNotes')
  end
end
