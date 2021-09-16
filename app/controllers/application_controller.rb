class ApplicationController < ActionController::API
 include ActionController::Cookies
 include ActionController::RequestForgeryProtection

 # protect_from_forgery with: :reset_session
 # def log_in(user)
 #  session[:user_id] = user.id
 # end
end
