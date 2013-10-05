require 'spec_helper'

describe "static_pages" do

  it "root page should be /home" do
    visit root_path
    page.should have_content "Home"
  end

end
