class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
    @project.project_images.build
  end

  def create
    current_user.projects.create(create_params)
    redirect_to projects_path
  end

private

  def create_params
    params.require(:project).permit(:title, :catch_copy, :concept, project_images_attributes: [:id, :image, :status])
  end

end
