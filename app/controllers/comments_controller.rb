class CommentsController < ApplicationController

  def create
    current_user.comments.create(comment_params)
    @comments = Comment.where(project_id: params[:project_id])
  end

private

  def comment_params
    params.require(:comment).permit(:text).merge(project_id: params[:project_id])
  end

end
