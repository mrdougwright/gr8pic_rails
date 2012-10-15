class User < ActiveRecord::Base
	has_secure_password
  #does this present security issue?
  
  has_many :photos
  has_many :ratings, :through => :photos

end
