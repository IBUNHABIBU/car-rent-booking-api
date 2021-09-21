class ApplicationController < ActionController::API
  include ActionController::Cookies
  include ActionController::RequestForgeryProtection
  rescue_from ActiveRecord::RecordNotDestroyed, with: :not_destroyed

  def log_in(user)
   session[:user_id] = user.id
  end

  private

  def not_destroyed(e)
    render json: {errors: e.record.errors}, status: :unproccessable_entity 
  end
end
