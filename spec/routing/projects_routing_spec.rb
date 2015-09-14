require 'rails_helper'

RSpec.describe Api::V1::ProjectsController, type: :routing do
  it 'should route GET /api/v1/projects/ to api/v1/projects#index' do
    expect(get('api/v1/projects'))
      .to route_to('api/v1/projects#index', format: 'json')
  end

  it 'should route GET /api/v1/projects/1 to api/v1/projects#show with id: 1' do
    expect(get('api/v1/projects/1'))
      .to route_to('api/v1/projects#show', id: '1', format: 'json')
  end

  it 'should route POST /api/v1/projects/ to api/v1/projects#create' do
    expect(post('api/v1/projects'))
      .to route_to('api/v1/projects#create', format: 'json')
  end

  it 'should route POST /api/v1/projects/1 to api/v1/projects#update with id: 1' do
    expect(put('api/v1/projects/1'))
      .to route_to('api/v1/projects#update', id: '1', format: 'json')
  end

  it 'should route DELETE /api/v1/projects/1 to api/v1/projects#delete with id: 1' do
    expect(delete('api/v1/projects/1'))
      .to route_to('api/v1/projects#destroy', id: '1', format: 'json')
  end
end
