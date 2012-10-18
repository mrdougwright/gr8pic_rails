class RatingsController < ApplicationController
  def index
    @winning_photo = Rating.winner
    @winning_user = User.find(@winning_photo.user_id).name
    @true_winning_photo = Rating.true_winner
    @true_winning_user = User.find(@true_winning_photo.user_id).name
  end

  def create
    @rating = Rating.new(params[:rating])
    
    if @rating.save
      redirect_to :back
    else
      render :edit
    end
  end

  def new
    @photo = Photo.random
    @rating = Rating.new(params[:rating])
    @user = User.last #NEED TO CHANGE TO CURRENT USER GIVING RATING!
  end

end
