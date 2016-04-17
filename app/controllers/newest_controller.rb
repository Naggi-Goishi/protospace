class NewestController < ApplicationController

  def index
    @projects = Project.page(params[:page]).per(8).order(updated_at: :DESC)
    gon.type = "newest"
    render template: 'projects/index'
  end

end
