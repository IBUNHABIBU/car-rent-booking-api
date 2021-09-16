class SessionsController < ApplicationController
  include CurrentUserConcern

  user = User.find_by(email: params[:session][:email])

  if user
    session[:user_id] = user.id
   render json: {
    status: :created,
    logged_in: true,
    user: user
   } 
  else 
   render json: {
    status: :unauthorized
   }
  end

end
