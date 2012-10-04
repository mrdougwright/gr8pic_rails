class User < ActiveRecord::Base
  attr_accessible :name, :email
  has_many :photos
  has_many :ratings, :through => :photos
end
