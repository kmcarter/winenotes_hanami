require 'spec_helper'

RSpec.describe Wine do
  it 'can be initialized with attributes' do
    wine = Wine.new(name: 'Test Wine', varietal: 'Shiraz', year: '2005', vinyard: 'Worldwide Wineries')

    expect(wine.name).to eq('Test Wine')
    expect(wine.varietal).to eq('Shiraz')
    expect(wine.year).to eq('2005')
    expect(wine.vinyard).to eq('Worldwide Wineries')
  end
end
