class Photo < ActiveRecord::Base
  belongs_to :user
  has_many :ratings

  before_save :default_values

  def default_values
    if self.ratings_total.nil? || self.ratings_count.nil?
      self.ratings_total = 0
      self.ratings_count = 0
    end
  end #should I use after_initialize instead. If so, how?
  # AND THIS OVERWRITES MY UPDATERATINGTOTAL METHOD

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

  def update_photo_ratings
    #This query may need work later. At large scale, the last photo id may
    #not be the same one user rated. Change to find Rating.value based on user_id on rating.
    self.ratings_total += Rating.where(:photo_id => self).last.value
    self.ratings_count += 1
    self.ratings_ave = self.ratings_total / self.ratings_count
    self.save!
  end  #updating total ratings and number of ratings

end
