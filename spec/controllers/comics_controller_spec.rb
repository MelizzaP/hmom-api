require 'rails_helper'

RSpec.describe ComicsController, type: :controller do
  let(:comic) { create :comic }
  let(:admin) { create :admin }

  context 'renders proper template' do
    describe 'GET' do
      it 'home' do
        get :home
        expect(response).to render_template(:home)
      end

      it 'index' do
        get :index
        expect(response).to render_template(:index)
      end

      it 'index' do
        get :index
        expect(response).to render_template(:index)
      end

      it 'about' do
        get :about
        expect(response).to render_template(:about)
      end

      it 'other_comics' do
        get :other_comics
        expect(response).to render_template(:other_comics)
      end

      it 'show' do
        get :show, { 'id' => comic.id }
        expect(response).to render_template(:show)
      end

      context 'admin tasks' do
        it 'new' do
          sign_in admin
          get :new
          expect(response).to render_template(:new)
        end

        it 'edit' do
          sign_in admin
          get :edit, { id: comic.id }
          expect(response).to render_template(:edit)
        end
      end
    end
  end
end
