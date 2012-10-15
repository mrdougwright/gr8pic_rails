class Photo < ActiveRecord::Base
  belongs_to :user
  has_many :ratings

  before_save :default_values

  def default_values
    self.rating_total = 0
    self.ratings_count = 0
  end #should I use after_initialize instead. If so, how?

  def new
  	@photo = Photo.new
  end	#WHAT IS THIS DOING?

  def self.random
  	Photo.order("RANDOM()").first
  end

  # def update_rating_total
  #   self.rating_total = Rating.where(:photo_id => self).sum(:value)
  #   self.save!
  # end  --From session with Kurt

  def update_rating_total_and_count
    #This query may need work later. At large scale, the last photo id may
    #not be the same one user rated. Change to find Rating.value based on user_id on rating.
    
    self.rating_total += Rating.where(:photo_id => self).last.value
    self.ratings_count += 1
  
    self.save!
  end  #updating total ratings and number of ratings

end
