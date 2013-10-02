require 'spec_helper'

describe Tag do

  context "should not be blank" do
    it { should validate_presence_of(:tag) }
  end

  context "should be unique" do
    it { should validate_uniqueness_of(:tag) }
  end

end
