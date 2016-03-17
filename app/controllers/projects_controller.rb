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
      valid_action
    end
  end

  def destroy
    project = Project.find(params[:id])
    if project.user_id == current_user.id
      project.destroy
    end
    redirect_to :root
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    project = Project.find(params[:id])
    if project.user_id == current_user.id
      project.update(create_params)
    end
    redirect_to :root
  end

private

  def create_params
    params.require(:project).permit(:title, :catch_copy, :concept, project_images_attributes: [:id, :image, :status])
  end

  def valid_action
    @project = Project.new(params.require(:project).permit(:title, :catch_copy, :concept))
    @project.project_images.build
    render action: :new
  end

end
