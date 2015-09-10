module Api
  module V1
    class ProjectsController < ApplicationController
      def index
        @projects = Project.all
        render json: @projects, meta: { total: 10 }
      end
    end
  end
end
