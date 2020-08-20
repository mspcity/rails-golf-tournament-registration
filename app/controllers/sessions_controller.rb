class SessionsController < ApplicationController
  def new
    @user = User.new
  end
  
  #login
  def create
    @user = User.find_by_email(user_params[:email])
  
    if @user && @user.authenticate(user_params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:error] = "Username or Password was incorrect"
      render :new
    end
  end

  def github
    user = User.find_or_create_from_omniauth(auth)
    session[:user_id] = user.id
    redirect_to user_path(user)
  end

  #logout
  def destroy
    session.clear
    redirect_to root_path
  end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end

    def auth
      request.env["omniauth.auth"]
    end
end


