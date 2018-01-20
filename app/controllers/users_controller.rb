class UsersController < ApplicationController
  def show
    @player = User.find(params[:id])
    @stats = @player.player_stats
  end
end
