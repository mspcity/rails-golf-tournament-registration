class TournamentsController < ApplicationController

  def index
    @tournaments = Tournament.order_by_tournament_name
  end

  def show
    @tournament = Tournament.find(params[:id])
  end
  
end
