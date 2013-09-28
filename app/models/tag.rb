class Tag < ActiveRecord::Base

  # attr_accessor :tag
  validates :tag, :presence => true, :uniqueness => true

end
