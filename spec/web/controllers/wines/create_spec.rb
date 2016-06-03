require 'spec_helper'
require_relative '../../../../apps/web/controllers/wines/create'

RSpec.describe Web::Controllers::Wines::Create do
  let(:action) { described_class.new }
  let(:params) { Hash[wine: { name: 'Test Wine' }] }

  before do
    WineRepository.clear
  end

  it 'successfully creates a new wine' do
    action.call(params)

    expect(action.wine.id).not_to be_nil
    expect(action.wine.name).to eq(params[:wine][:name])
  end

  it 'redirects the user to the wines listing' do
    response = action.call(params)

    expect(response[0]).to eq(302)
    expect(response[1]['Location']).to eq('/wines')
  end
end
