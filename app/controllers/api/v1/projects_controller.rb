module Api
  module V1
    # Handles the projects API endpoint
    class ProjectsController < ApplicationController
      before_action :set_project, only: [:show, :update, :destroy]

      def index
        @projects = Project.all
        render json: @projects
      end

      def show
        render json: @project
      end

      private

      def set_project
        @project = Project.find(params[:id])
      end
    end
  end
end
