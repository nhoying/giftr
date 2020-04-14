class SessionsController < ApplicationController
  def new
  end

  def create
  end

  def login
  end

  def welcome
  end

  def googleAuth
    # Get Access tokens from the google server
    access_token = request.env["omniauth.auth"]
    user = User.from_omniauth(access_token)
    

    user.google_token = access_token.credentials.token

    refresh_token = access_token.credentials.refresh_token
    user.google_refresh_token = refresh_token if refresh_token.present?
      user.save

    log_in(user)
    redirect_to welcome_path
  end

  def log_in(user)
    session[:user_id] = user.id
  end

end
