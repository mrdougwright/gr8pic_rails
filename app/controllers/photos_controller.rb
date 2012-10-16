class PhotosController < ApplicationController
  def index
  	@photo = Photo.random
    @rating = Rating.new
  end

  def create
    @photo = Photo.create(params[:photo])
    if @photo.save
      redirect_to :back
    else
      render :edit
    end
  end

  def new
    @user = User.new
  end

  def destroy
  end

   def show
   	@photo = Photo.last
   end
end
