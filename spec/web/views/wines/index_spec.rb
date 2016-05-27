require 'spec_helper'
require_relative '../../../../apps/web/views/wines/index'

RSpec.describe Web::Views::Wines::Index do
  let(:exposures) { Hash[wines: []] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/wines/index.html.erb') }
  let(:view)      { described_class.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #wines' do
    expect(view.wines).to eq exposures.fetch(:wines)
  end

  describe 'when there are no wines' do
    it 'shows a placeholder message' do
      expect(rendered).to include('<p class="placeholder">There are no wines yet.</p>')
    end
  end

  describe 'when there are wines' do
    let(:wine1) { Wine.new(name: 'Test Wine 1') }
    let(:wine2) { Wine.new(name: 'Test Wine 2') }
    let(:wine3) { Wine.new(name: 'Test Wine 3') }

    it 'lists all wines' do
      expect(rendered.scan(/class='wine'/).count).to eq(3)
      expect(rendered).to have_content('Test Wine 1')
      expect(rendered).to have_content('Test Wine 2')
      expect(rendered).to have_content('Test Wine 3')
    end

    it 'hides the placeholder message' do
      expect(rendered).not_to include('<p class="placeholder">There are no wines yet.</p>')
    end
  end
end
