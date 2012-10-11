class RatingsController < ApplicationController
  def index
  	@photos = Photo.all
  end

  def new
  end

  def show
  end
end
