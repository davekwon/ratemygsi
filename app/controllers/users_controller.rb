class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@reviewFromThisUser = Review.where(user_id: @user.id) 
  end
end