class PhotosController < ApplicationController
  def index
  	@photos = Photo.all
  end

  def new
  end

  def destroy
  end

  def show
  end
end
