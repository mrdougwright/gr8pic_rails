class Photo < ActiveRecord::Base
  belongs_to :user
  # attr_accessible :title, :body

  has_many :ratings


  def new
  	@photo = Photo.new
  end	

  def self.random
  	Photo.order("RANDOM()").first
  end

  def update_rating_total
    self.rating_total = Rating.where(:photo_id => self).sum(:value)
    self.save!
  end

end
