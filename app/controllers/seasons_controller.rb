class SeasonsController < ApplicationController

  def show
    @league = League.find(params[:league_id])
    @season = @league.seasons.find_by(id: params[:id])
    @teams = @season.teams
    @weeks = @season.weeks
    @game = Game.new
    @game.matches.build
    @game.matches.build
  end
  
  def scoreboard
    @league = League.find(params[:league_id])
    @season = @league.seasons.find_by(id: params[:season_id])
  end

end
