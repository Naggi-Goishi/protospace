class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @projects = @user.projects.page(params[:page]).per(8).order(likes_count: :DESC)
  end

end
