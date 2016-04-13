class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def show
    @projects = Project.tagged_with(params[:not_id])
    render template: 'projects/index'
  end

end
