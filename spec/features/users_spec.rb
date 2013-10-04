require 'spec_helper'

describe "Users" do

  before do
    @user = User.create :tag => 'Quzhou'
  end

  describe "GET /users" do
    it "should display user(s)" do
      visit users_path
      page.should have_content "Doug Hillman"
    end

    it "can create a new user" do
    end

    it "should not create a blank user" do
    end
  end

end
