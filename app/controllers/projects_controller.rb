class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
    @project.project_images.build
  end

  def create
    @project = Project.new(create_params)
    if @project.save
      redirect_to :root
    else
      render :new
    end
  end

  def destroy
    project = Project.find(params[:id])
    redirect_to :root
  end

  def edit
    @project = Project.find(params[:id])
    unless current_user.id == @project.user_id
      redirect_to :root
    else
    end
  end

  def update
    project = Project.find(params[:id])
    project.save
    redirect_to :root
  end

private

  def create_params
    params.require(:project).permit(:title, :catch_copy, :concept, project_images_attributes: [:id, :image, :status]).merge(user_id: current_user.id)
  end

end
