class MatchesController < ApplicationController
  def new
    @league = League.find(params[:league_id])
    @match = Match.new
  end
end
