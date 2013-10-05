require 'spec_helper'

describe Tag do

  context "#validations" do
    it { should validate_presence_of(:tag) }
    it { should validate_uniqueness_of(:tag) }
  end

  context "#fields" do
    it { should respond_to (:tag) }
  end

  context "#associations" do
    # { should have_many (:pictures) }
    # will add these later.
  end

end
