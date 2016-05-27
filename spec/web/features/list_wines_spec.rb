require 'features_helper'

feature 'Listing all wines' do
  before do
    WineRepository.clear

    WineRepository.create(Wine.new(name: 'Test Wine 1'))
    WineRepository.create(Wine.new(name: 'Test Wine 2'))
    WineRepository.create(Wine.new(name: 'Test Wine 3'))
  end

  scenario 'displays each wine on the page' do
    visit '/wines'

    within '#wines' do
      expect(page).to have_css('.project', count: 3)
    end
  end
end
