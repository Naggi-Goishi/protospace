class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
    @project.project_images.build
  end

  def create
    if current_user.projects.create(create_params).valid?
      redirect_to :root
    else
      valid_params
    end
  end

private

  def create_params
    params.require(:project).permit(:title, :catch_copy, :concept, project_images_attributes: [:id, :image, :status])
  end

  def valid_params
    @project = Project.new(params.require(:project).permit(:title, :catch_copy, :concept))
    @project.project_images.build
    render action: :new
  end

end
