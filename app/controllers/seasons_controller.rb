class SeasonsController < ApplicationController

  def show
    @league = Team.find(params[:league_id])
    @season = @league.seasons.find_by(id: params[:id])
    @teams = @season.teams
    # @games = @team.games_for_season(@season)
  end

end
