class ApplicationController < ActionController::API
  include ActionController::Cookies
  include ActionController::RequestForgeryProtection

rescue from ActiveRecord::RecordNotDestroyed, with: :not_destroyed
  # protect_from_forgery with: :reset_session
  def not_destroyed
    render json: {}, status: :unproccessable_entity 
  end
  def log_in(user)
   session[:user_id] = user.id
  end
end
