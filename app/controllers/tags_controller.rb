class TagsController < ApplicationController

  def index
    @tag = Tag.new
    @tags = Tag.all
  end

  def create
    @tag = Tag.create(tag_params)
    redirect_to :back
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    tag = Tag.find(params[:id])
    if tag.update_attributes(tag_params)  # this line is causing errors:  undefined method `update_attributes'
      redirect_to tags_path
    else
      redirect_to :back
    end
  end




  private

  def tag_params
      params.require(:tag).permit(:tag, :id)
  end
end
