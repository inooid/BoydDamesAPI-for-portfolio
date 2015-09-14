RSpec.shared_examples 'api_controller' do
  describe 'rescues from ActiveRecord::RecordNotFound' do
    context 'GET #show' do
      before { get :show, id: 'not-existing' }

      it { expect(response.status).to eq(404) }
      it { expect(response.body).to be_blank }
    end

    context 'PUT #update' do
      before { put :update, id: 'not-existing' }

      it { expect(response.status).to eq(404) }
      it { expect(response.body).to be_blank }
    end

    context 'DELETE #destroy' do
      before { delete :destroy, id: 'not-existing' }

      it { expect(response.status).to eq(404) }
      it { expect(response.body).to be_blank }
    end
  end

  describe 'rescues from ActionController::ParameterMissing' do
    context 'POST #create' do
      before { post :create, wrong_params: { foo: :bar } }

      it { expect(response.status).to eq(422) }
      it { expect(response.body).to match(/error/) }
    end
  end
end
