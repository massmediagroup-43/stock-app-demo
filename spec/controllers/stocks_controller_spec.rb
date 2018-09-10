require 'rails_helper'

RSpec.describe StocksController, type: :controller do
  context 'authenticated user' do
    let(:user) { create(:user) }
    context 'authenticated user' do
      before :each do
        sign_in user
      end
      describe 'GET #index' do
        it 'returns http success' do
          get :index
          expect(response).to have_http_status(:success)
        end
        it 'assigns users stocks to @stocks' do
          create(:stock, user: user)
          get :index
          expect(assigns[:stocks]).to eq(user.stocks)
        end
        it 'renders :index template' do
          get :index
          expect(response).to render_template(:index)
        end
      end
    end
    context 'guest user' do
      describe 'POST #create' do
        it 'redirects to sign in page' do
          post :create
          expect(response).to redirect_to(new_user_session_path)
        end
      end
      describe 'GET #show' do
        it 'redirects to sign in page' do
          get :show, params: {id: 1}
          expect(response).to redirect_to(new_user_session_path)
        end
      end
      describe 'DELETE #destroy' do
        it 'redirects to sign in page' do
          delete :destroy, params: {id: 1}
          expect(response).to redirect_to(new_user_session_path)
        end
      end
      describe 'GET #edit' do
        it 'redirects to sign in page' do
          get :edit, params: {id: 1}
          expect(response).to redirect_to(new_user_session_path)
        end
      end
      describe 'PUT #update' do
        it 'redirects to sign in page' do
          put :update, params: {id: 1}
          expect(response).to redirect_to(new_user_session_path)
        end
      end
    end
  end
end
