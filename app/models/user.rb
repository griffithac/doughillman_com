class User < ActiveRecord::Base

  validates :user,
    :presence => true,
    :uniqueness => true

  validates :first_name,
    :presence => true

  validates :last_name,
    :presence => true

end
