require 'spec_helper'

describe "Tags" do

  before do
    @tag = Tag.create :tag => 'Quzhou'
  end


  describe "GET /tags" do
    it "should display some tags" do
      visit tags_path
      page.should have_content "Quzhou"
    end

    it "can create a new tag" do
      visit tags_path
      fill_in 'Tag', :with => 'Shanghai'
      click_button 'Create Tag'
      current_path.should == tags_path
      page.should have_content "Shanghai"
    end
  end


  describe "PUT /tags" do
    it "can edit a tag" do
      visit tags_path
      click_link 'Edit'
      current_path.should == edit_tag_path(@tag)
      find_field('Tag').value.should == 'Quzhou'
      fill_in 'Tag', :with => '上海'
      click_button 'Update Tag'
      current_path.should == tags_path
      page.should have_content '上海'
    end

    it "should not update a tag to be blank" do
      visit tags_path
      click_link 'Edit'
      fill_in 'Tag', :with => ''
      click_button 'Update Tag'
      current_path.should == edit_tag_path(@tag)
      page.should have_content 'There was an error updating your tag.'
    end
  end


  describe "DELETE /tags" do
    it "should delete a tag" do
      visit tags_path
      find('#tag_#{@tag.id}').click_link 'Delete'  # find(:css, 'ul li')
      page.should have_content "Tag has been deleted."
      page.should have_no_content "Quzhou"
    end
  end


end
