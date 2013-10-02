class TagsController < ApplicationController

  def index
    @tag = Tag.new
    @tags = Tag.all
  end

  def create
    @tag = Tag.create(tag_params)
    if @tag.save
      redirect_to :back, :notice => 'Your tag has successfully been created.'
    else
      redirect_to :back, :notice => 'There was an error creating your tag'
    end
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    tag = Tag.find(params[:id])
    if tag.update_attributes(tag_params)
      redirect_to tags_path, :notice => 'Your tag has successfully been updated.'
    else
      redirect_to :back, :notice => 'There was an error updating your tag.'
    end
  end

  def destroy
    Tag.delete(params[:id])
    redirect_to :back, :notice => "Tag has been deleted."
  end




  private

  def tag_params
      params.require(:tag).permit(:tag, :id)
  end
end
