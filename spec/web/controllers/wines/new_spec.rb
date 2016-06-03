require_relative '../../../../apps/web/controllers/wines/new'

RSpec.describe Web::Controllers::Wines::New do
  let(:action) { described_class.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    expect(response[0]).to eq 200
  end
end
