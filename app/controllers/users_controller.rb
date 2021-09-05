class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      log_in user 
      render json: {
            status: :created,
            user: user 
        } 
    else
     render json: {
            status: 500
        }
    end
  end

  private 

  def user_params
   params.require(:user).permit(:name, :email, :password, :password_confirmation) 
  end
end
