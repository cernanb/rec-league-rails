class GamesController < ApplicationController
  def create
    @season = Season.find_by(id: params[:season_id])
    
    @week = @season.weeks.find_by(num: params[:game][:week_id])
    @game = @week.games.build(game_params)
    @game.save
    session[:return_to] ||= request.referer
    redirect_to session.delete(:return_to)
  
  end

  private
    def game_params
      params.require(:game).permit(matches_attributes: [:team_id])
    end
end
