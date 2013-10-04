class TagsController < ApplicationController


  def index
    @tag = Tag.new
    @tags = Tag.all
  end


  def new
    @tag = Tag.new

    respond_to do |format|
      format.html
    end
  end


  def create
    @tag = Tag.create(tag_params)
    if @tag.save
      redirect_to :back, :notice => 'Tag was succefully created.'
    else
      redirect_to :back, :alert => 'There was a problem creating the tag.'
    end
  end


  def edit
    @tag = Tag.find(params[:id])
  end


  def update
    tag = Tag.find(params[:id])
    if tag.update_attributes(tag_params)
      redirect_to tags_path, :notice => 'Tag has successfully been updated.'
    else
      redirect_to :back, :notice => 'There was a problem updating the tag.'
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
