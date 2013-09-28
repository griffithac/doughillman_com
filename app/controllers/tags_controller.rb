class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def create
    @tag = Tag.create(params[:tag])
    redirect_to :back
  end



  def tag_params
    params.require(:tag).permit(:tag, :id)
  end



end
