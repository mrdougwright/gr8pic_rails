class RatingsController < ApplicationController
  def index
    @winningPhoto = Rating.winner
    @winningUser = User.find(@winningPhoto.user_id).name
  end

  def create
    @rating = Rating.new(params[:rating])
    if @rating.save
      redirect_to :back
    else
      render :edit
    end
  end

  def show
    
  end



end
