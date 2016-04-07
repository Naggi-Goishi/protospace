class CommentsController < ApplicationController

  def create
    Comment.create(comment_params)
    @comments = Comment.where(project_id: params[:comment][:project_id])
    @comment = Comment.new
  end

private

  def comment_params
    params.require(:comment).permit(:text, :user_id, :project_id)
  end

end
