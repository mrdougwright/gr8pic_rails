class Photo < ActiveRecord::Base
  belongs_to :user
  has_many :ratings
  has_attached_file :image, :styles => {
    :thumb => "100x100#",
    :small => "150x150>"
  }

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
    self.ratings_ave = self.ratings_total / self.ratings_count.to_f
    self.save!
  end  #updating total ratings and number of ratings HOW TO MAKE THIS DECIMALS?

end
