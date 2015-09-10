module Api
  module V1
    class ProjectSerializer < ActiveModel::Serializer
      attributes :id, :title, :body
    end
  end
end
