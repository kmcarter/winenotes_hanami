require 'spec_helper'
require_relative '../../../../apps/web/controllers/wines/index'

RSpec.describe Web::Controllers::Wines::Index do
  let(:action) { described_class.new }
  let(:params) { Hash[] }

  before do
    WineRepository.clear

    @wine = WineRepository.create(Wine.new(name: 'Test Wine'))
  end

  it 'is successful' do
    response = action.call(params)
    expect(response[0]).to eq 200
  end

  it 'exposes all wines' do
    action.call(params)
    expect(action.exposures[:wines]).to eq([@wine])
  end
end
