require 'bcrypt'


class PhotosController < ApplicationController
  def index
  	@photo = Photo.random
    @rating = Rating.new
  end

  def new
    @user = User.new
  end

  def destroy
  end

  def show
  	@photo = Photo.find(params[:id])
  end
end
