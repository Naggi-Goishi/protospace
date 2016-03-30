class LikesController < ApplicationController

before_action :set_likes_project, only: [:create, :destroy]

  def create
    @like = current_user.likes.create(user_id: current_user.id, project_id: params[:project_id])
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, project_id: params[:project_id])
    like.destroy
  end

private

  def set_likes_project
      @likes = Like.where(project_id: params[:project_id])
      @project = Project.find(params[:project_id])
  end


end
