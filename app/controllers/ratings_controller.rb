class RatingsController < ApplicationController
  def index
    
  end

  def new
  	#use this
  	#creating a rating for a photo
  end

  def show
    @winningPhoto = Rating.winner
    @winningUser = User.find(@winningPhoto.user_id).name
  end

  def create
  	 #creating a rating for a photo

  end


end
