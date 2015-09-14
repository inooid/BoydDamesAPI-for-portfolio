require 'rails_helper'

RSpec.describe Api::V1::ProjectsController, type: :controller do
  # This should return the minimal set of attributes required to create a valid
  # Customer. As you add validations to Customer, be sure to
  # adjust the attributes here as well.
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
