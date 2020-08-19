class StaticController < ApplicationController
  
  def home
    if current_user
      @user = current_user
      redirect_to tournament_path(@tournament)
    end
  end

  

end
