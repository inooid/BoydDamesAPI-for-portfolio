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

      def create
        @project = Project.new(project_params)

        if @project.save
          render json: @project, status: :created,
                 location: api_v1_project_url(@project)
        else
          render json: @project.errors, status: :unprocessable_entity
        end
      end

      def update
        if @project.update(project_params)
          head :no_content
        else
          render json: @project.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @project.destroy

        head :no_content
      end

      private

      def set_project
        @project = Project.find(params[:id])
      end

      def project_params
        params.require(:project).permit(:title, :body)
      end
    end
  end
end
