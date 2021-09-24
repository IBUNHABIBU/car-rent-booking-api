class SessionsController < ApplicationController
  include CurrentUserConcern

  def create
    user = User.find_by(email: params['user']['email'])
      .try(:authenticate, params['user']['password'])

    if user
      log_in user
      render json: { details: UserRepresenter.new(user).as_json, status: :created, logged_in: true }
    else
      render json: {
        status: :unauthorized
      }
    end
  end

  def logged_in
    if @current_user
      render json: { details: UserRepresenter.new(@current_user).as_json , logged_in: true } 
    else
      render json: {
        logged_in: false
      }
    end
  end

  def logout
    reset_session
    render json: {
      status: 200, logged_in: false
    }
  end
end
