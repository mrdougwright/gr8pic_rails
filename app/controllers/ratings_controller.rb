class RatingsController < ApplicationController
  def index
    @winningPhoto = Rating.winner
    @winningUser = User.find(@winningPhoto.user_id).name
  end

  def new
  	#use this
  	#creating a rating for a photo
  end

  def show

  end

  def create
  	 #creating a rating for a photo

  end


end
