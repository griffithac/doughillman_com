class Tag < ActiveRecord::Base

  validates :tag, :presence => true
  validates :tag, :uniqueness => true

end
