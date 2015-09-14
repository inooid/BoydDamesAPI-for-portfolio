require 'rails_helper'

RSpec.describe Api::V1::ProjectsController, type: :controller do
  it_behaves_like 'api_controller'

  let(:valid_attributes) do
    { title: Faker::Company.name, body: Faker::Lorem.paragraph }
  end

  let(:invalid_attributes) do
    { title: nil, body: Faker::Lorem.paragraph }
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
end
