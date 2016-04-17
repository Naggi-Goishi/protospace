class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def show
    @projects = Project.page(params[:page]).per(8).tagged_with(params[:tag_name])
    render template: 'projects/index'
  end

end
