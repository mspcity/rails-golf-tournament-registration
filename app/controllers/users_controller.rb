class UsersController < ApplicationController
  before_action :require_login, except: [:index, :new, :create]

  def new
    @user = User.new
  end

  #signup
  def create
    @user = User.new(user_params)

    if @user.save 
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else

      render :new
    end
  end

  def index
    @users = User.all
    
  end

  def show
    @user = User.find(params[:id])
  end


  private
    def user_params
      params.require(:user).permit(:email, :password)
    end
end
