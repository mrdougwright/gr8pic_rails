class Rating < ActiveRecord::Base
  attr_accessible :value, :photo_id, :user_id

  belongs_to :photo
  belongs_to :user

  private
  after_save :recalculate_photo_sums
  # attr_accessible :title, :body

  def recalculate_photo_sums
    # photo.update_rating_total if photo
    photo.update_rating_total_and_count if photo
  end
  
  def self.winner
    #get the highest total
    highestTotal = Photo.maximum("rating_total")
    #find photo with highest total
    Photo.where(:rating_total => highestTotal).first
	end

  def edit
    @rating = Rating.find(params[:id])
  end #WHAT IS THIS DOING?
	
end
