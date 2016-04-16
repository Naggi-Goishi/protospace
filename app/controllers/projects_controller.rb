class ProjectsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_project, only: [:show, :destroy, :edit, :update]
  def index
    @projects = Project.page(params[:page]).per('8').order('likes_count DESC')
    gon.type = "popular"
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
    @project = current_user.projects.new(project_params)
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
    params.require(:project).permit(:title, :catch_copy, :concept, project_images_attributes: [:id, :image, :status]).merge(tag_list: params[:project][:tag])
  end

  def set_project
    @project = Project.find(params[:id])
  end

end
