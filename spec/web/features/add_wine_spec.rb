require 'features_helper'

feature 'Creating a wine' do
  after do
    WineRepository.clear
  end

  scenario 'is successful with valid attributes' do
    visit '/wines/new'

    within 'form#wine-form' do
      fill_in 'Name', with: 'Test Wine 1'
      fill_in 'Year', with: 2014

      click_button 'Create Wine'
    end

    expect(current_path).to eq('/wines')
    expect(page).to have_content('Test Wine 1')
  end
end
