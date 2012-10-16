class RatingsController < ApplicationController
  def index
    @winningPhoto = Rating.winner
    @winningUser = User.find(@winningPhoto.user_id).name
    @true_winningPhoto = Rating.true_winner
    @true_winningUser = User.find(@true_winningPhoto.user_id).name
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
