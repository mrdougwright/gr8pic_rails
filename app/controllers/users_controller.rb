class UsersController < ApplicationController
  def index
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		redirect_to :back #NEED TO FIX THIS AND CREATE EDIT METHODS
  		
  	else
  		render :edit
  	end
  end

  def show
  end

  def destroy
  end
end
