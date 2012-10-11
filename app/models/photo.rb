class Photo < ActiveRecord::Base
  belongs_to :user
  # attr_accessible :title, :body

  has_many :ratings


  def highest_rated
  	#sum all ratings for each photo from rating model. 
  	#highest rated photo is displayed for 24 hrs
  end	

  def self.random
  	Photo.order("RANDOM()").first
  end
end
