module SessionsHelper
  def log_in
    session[:user_id] = user.id
  end
end
