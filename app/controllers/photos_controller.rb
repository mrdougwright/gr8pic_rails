class PhotosController < ApplicationController
  def index
  	@photo = Photo.random
  end

  def new
  end

  def destroy
  end

  def show
  	@photo = Photo.find(params[:id])
  end
end
