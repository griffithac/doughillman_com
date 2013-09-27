require 'spec_helper'

describe "Tags" do
  describe "GET /tags" do
    it "works! (now write some real specs)" do
      visit tags_path
      page.should have_content "Quzhou"
    end
  end
end
