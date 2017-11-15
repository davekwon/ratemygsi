class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  end

  def destroy
    User.find(user[:user_id]).destroy      
    user[:user_id] = nil         
    redirect_to 'root'
  end  

end