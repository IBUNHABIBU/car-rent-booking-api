class SessionsController < ApplicationController
  include CurrentUserConcern

  user = User.find_by(email: params[:session][:email].downcase)
    debugger
  if user
   log_in user
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
