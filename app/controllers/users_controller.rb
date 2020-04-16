class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(local_user_params)
    @user.authtype = 'local'
    @user.email = :username
    
    if @user.save
      log_in(@user)
      redirect_to '/welcome'
    else
      render 'new'
    end
  end

  private 
    def local_user_params
      params.require(:user).permit(:name, :username, :password, :password_confirmation)
    end
end
