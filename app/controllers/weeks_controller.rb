class WeeksController < ApplicationController
  def show
    @league = League.find_by(id: params[:league_id])
    @season = @league.seasons.find_by(id: params[:season_id])
    @week = @season.weeks.find_by(id: params[:id])
  end
end
