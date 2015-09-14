module Api
  module V1
    # Handles the projects API endpoint
    class ProjectsController < ApplicationController
      def index
        @projects = Project.all
        render json: @projects
      end
    end
  end
end
