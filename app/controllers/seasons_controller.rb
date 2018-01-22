class SeasonsController < ApplicationController

  def show
    @team = Team.find(params[:team_id])
    @season = @team.seasons.find_by(id: params[:id])
    @games = @team.games_for_season(@season)
  end

end
