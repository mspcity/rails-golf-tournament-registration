class SessionsController < ApplicationController
  def new
    @user = User.new
  end
  
  #login
  def create
    @user = User.find_by_email(user_params[:email])
  
    if @user && @user.authenticate(user_params[:password])
      session[:user_id] = @user.id
      redirect_to tournaments_path
    else
      render :new
    end
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
end


