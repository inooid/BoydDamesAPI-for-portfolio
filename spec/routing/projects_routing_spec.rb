require 'rails_helper'

RSpec.describe Api::V1::ProjectsController, type: :routing do
  it { expect(get: 'api/v1/projects').to route_to('api/v1/projects#index') }
  it { expect(get: 'api/v1/projects/1').to route_to('api/v1/projects#show', id: '1') }
  it { expect(post: 'api/v1/projects').to route_to('api/v1/projects#create') }
  it { expect(put: 'api/v1/projects/1').to route_to('api/v1/projects#update', id: '1') }
  it { expect(delete: 'api/v1/projects/1').to route_to('api/v1/projects#destroy', id: '1') }
end
