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
    #NEEDS TO BE CHANGED TO PHOTO BASED ON USER AUTH
    @photo = Photo.new
    @user = User.last #NEED TO CHANGE TO CURRENT USER WHO IS UPLOADING
  end

  def update
    @photo = Photo.create(params[:photo])

    if @photo.save
      redirect_to ratings_path
    else
      redirect_to new_photo_path
    end
  end

  def destroy
  end

  def show
    @photo = Photo.last
  end
  
end
