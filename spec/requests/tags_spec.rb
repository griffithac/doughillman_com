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
      save_and_open_page
    end
  end

  describe "PUT /tags" do
    it "can edit a tag" do
      visit tags_path
      click_link 'Edit'
      current_path.should == edit_tag_path(@tag)
      save_and_open_page
      find_field('Tag').value.should == '上海'

      fill_in 'Tag', :with => '上海'
      click_button 'Update Tag'
      current_path.should == tags_path
      # page.should have_content '上海'
    end
  end


end
