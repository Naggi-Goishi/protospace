class ProjectsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_project, only: [:show, :destroy, :edit, :update]
  def index
    @projects = Project.all
  end

  def show
    @likes = Like.where(project_id: params[:id])
    @like = Like.find_by(user_id: current_user.id) if user_signed_in?
    @comments = Comment.where(project_id: params[:id])
    @comment = Comment.new
    @comment.project_id = params[:id]
  end

  def new
    @project = Project.new
    @project.project_images.build
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to :root
    else
      render :new
    end
  end

  def destroy
    @project.destroy
    redirect_to :root
  end

  def edit
    unless current_user.id == @project.user_id
      redirect_to :root
    else
    end
  end

  def update
    @project.update(project_params)
    redirect_to :root
  end

private

  def project_params
    params.require(:project).permit(:title, :catch_copy, :concept, :name_list, project_images_attributes: [:id, :image, :status]).merge(user_id: current_user.id, tag_list: params[:project][:name])
  end

  def set_project
    @project = Project.find(params[:id])
  end

end
