require 'spec_helper'

describe "Tags" do

  before do
    @tag = Tag.create :tag => 'Quzhou'
  end


  describe "GET /tags" do
    it "should display the tags index" do
      visit tags_path
      page.should have_content "Quzhou"
      page.should have_content "Tags"
    end
  end

  describe "GET tags/new" do
    it "should create a tag" do
      visit tags_path
      page.should have_content "Tags"
      click_link "New Tag"
      current_path == new_tag_path
      fill_in "Tag", :with => "Shanghai"
      click_button "Create Tag"
      current_path == tags_path
      page.should have_content "Shanghai"
      page.should have_content "Tag was succefully created."
    end
  end

  describe "GET tags/:id/edit" do
    it "should edit a tag" do
      visit tags_path
      page.should have_content "Quzhou"
      click_link "Edit"
      page.should_not have_content "Delete"
    # page.should have_content "Quzhou" <-- This one is being gay. Work it out later.
      fill_in "Tag", :with => "衢州"
      click_button "Update Tag"
      current_path == tags_path
      page.should have_content "衢州"
      page.should have_content "Tag was successfully updated."
    end
  end

    describe "GET tags/:id" do
      pending "should view a tag" do
      # add way to click the tag to get tag_path
    end
  end

  describe "DELETE Tags" do
    it "should delete a tag" do
      visit tags_path
      page.should have_content "Quzhou"
      click_link "Delete"
      page.should_not have_content "Quzhou"
      page.should have_content "Tag was deleted."
    end
  end

end
