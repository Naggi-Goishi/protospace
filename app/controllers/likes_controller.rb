class LikesController < ApplicationController

  def create
    @like = current_user.likes.create(project_id: params[:project_id])
    set_likes_project
  end

  def destroy
    like = current_user.likes.find_by(project_id: params[:project_id])
    like.destroy
    set_likes_project
  end

private

  def set_likes_project
      @likes = Like.where(project_id: params[:project_id])
      @project = Project.find(params[:project_id])
  end

end
