require 'rails_helper'

RSpec.describe Api::V1::ProjectsController, type: :controller do
  it_behaves_like 'api_controller'

  let(:valid_attributes) do
    { title: Faker::Company.name, body: Faker::Lorem.paragraph }
  end

  let!(:project) { Project.create(valid_attributes) }

  describe 'GET #index' do
    it 'assigns all projects as @projects' do
      get :index
      expect(assigns(:projects)).to eq([project])
    end
  end

  describe 'GET #show' do
    it 'assigns the requested project as @project' do
      get :show, id: project.id
      expect(assigns(:project)).to eq(project)
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Project' do
        expect do
          post :create, project: valid_attributes, format: :json
        end.to change(Project, :count).by(1)
      end

      it 'assigns a newly created project as @project' do
        post :create, project: valid_attributes, format: :json
        expect(assigns(:project)).to be_a(Project)
        expect(assigns(:project)).to be_persisted
      end
    end

    # context 'with invalid params' do
    #   it 'assigns a newly created but unsaved project as @project' do
    #     post :create, project: invalid_attributes, format: :json
    #     expect(assigns(:project)).to be_a_new(Project)
    #   end

    #   it 'returns unprocessable_entity status' do
    #     put :create, project: invalid_attributes
    #     expect(response.status).to eq(422)
    #   end
    # end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        { title: 'WatVoorWeer.nl', body: 'Nice weather!' }
      end

      it 'updates the requested project' do
        put :update, id: project.id, project: new_attributes, format: :json
        project.reload
        expect(project.title).to eq('WatVoorWeer.nl')
        expect(project.body).to eq('Nice weather!')
      end

      it 'assigns the requested project as @project' do
        put :update, id: project.id, project: valid_attributes, format: :json
        expect(assigns(:project)).to eq(project)
      end
    end

    # context 'with invalid params' do
    #   it 'assigns the project as @project' do
    #     put :update, id: project.id, project: invalid_attributes, format: :json
    #     expect(assigns(:project)).to eq(project)
    #   end

    #   it 'returns unprocessable_entity status' do
    #     put :update, id: project.id, project: invalid_attributes, format: :json
    #     expect(response.status).to eq(422)
    #   end
    # end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested project' do
      expect { delete :destroy, id: project.id, format: :json }
        .to change(Project, :count).by(-1)
    end

    it 'redirects to the projects list' do
      delete :destroy, id: project.id, format: :json
      expect(response.status).to eq(204)
    end
  end
end
