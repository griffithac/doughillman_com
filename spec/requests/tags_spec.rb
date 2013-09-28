require 'spec_helper'

describe "Tags" do
  describe "GET /tags" do
    it "should display some tags" do
      @tag = Tag.create :tag => 'Quzhou'
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
end
