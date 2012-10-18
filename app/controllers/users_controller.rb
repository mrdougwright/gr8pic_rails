class UsersController < ApplicationController
  
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
   
    if @user.save
      redirect_to new_photo_path #NEED TO FIX THIS AND CREATE EDIT METHODS
    else
      flash[:error] = @user.errors.empty? ? "Error" : @user.errors.full_messages.to_sentence
      redirect_to new_user_path
    end
  end

  def show
  end

  def destroy
  end

end
