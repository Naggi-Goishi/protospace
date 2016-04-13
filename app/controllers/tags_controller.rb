class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def show
    @projects = Project.tagged_with(params[:tag_name])
    render template: 'projects/index'
  end

end
