class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      log_in(user)
      redirect_to welcome_path
    else 
      flash.now.alert = "Email or password is invalid"
    end
  end

  def login
  end

  def welcome
  end

  def destroy
    reset_session
    redirect_to welcome_path
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
  
end
