class Rating < ActiveRecord::Base
  attr_accessible :value, :photo_id, :user_id

  belongs_to :photo
  belongs_to :user

  private
  after_save :recalculate_photo
  # attr_accessible :title, :body

  def recalculate_photo
    # photo.update_rating_total if photo
    photo.update_photo_ratings if photo
  end
  
  def self.winner #WINNER BY HIGHEST TOTAL
    #get the highest total
    highestTotal = Photo.maximum("ratings_total")
    #find photo with highest total
    Photo.where(:ratings_total => highestTotal).first
	end

  def self.true_winner  #PROBLEM --> what about ties?
    highestTotal = Photo.maximum("ratings_ave")
    Photo.where(:ratings_ave => highestTotal).first
  end

  def edit
    @rating = Rating.find(params[:id])
  end #WHAT IS THIS DOING?
	
end
