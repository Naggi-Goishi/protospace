class LikesController < ApplicationController

before_action :set_likes_project, only: [:create, :destroy]

  def create
    @like = current_user.likes.create(project_id: @project.id)
  end

  def destroy
    like = current_user.likes.find_by(project_id: @project.id)
    like.destroy
  end

private

  def set_likes_project
      @likes = Like.where(project_id: params[:project_id])
      @project = Project.find(params[:project_id])
  end

end
