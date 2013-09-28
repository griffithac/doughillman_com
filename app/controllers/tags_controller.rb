class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def create
    @tag = Tag.create(tag_params)
    redirect_to :back
  end



  def tag_params
    puts params
    params.require(:tag).permit(:tag)
  end



end
