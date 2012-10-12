class RatingsController < ApplicationController
  def index
    @ratingsAverage = Rating.average(2)
    @winner = Rating.winner
    @averages = Rating.averages
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
