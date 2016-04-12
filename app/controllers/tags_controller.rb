class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def show
    @projects = Project.tagged_with(params[:id])
  end

end