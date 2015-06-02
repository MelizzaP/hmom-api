require 'rails_helper'

RSpec.describe ComicsController, type: :controller do
  describe 'home' do
    it 'gets the last comic added' do
      comic = create(:comic)
      get :home
      expect(response).to include(comic)
    end
  end

  describe 'index' do
    it 'selects all comics' do
      create_list(:comic, 5)

    end
  end
end
