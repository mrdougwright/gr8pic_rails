class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		redirect_to :back #NEED TO FIX THIS AND CREATE EDIT METHODS
  	else
  		redirect_to new_user_path
  	end
  end

  def show
  end

  def destroy
  end
end
