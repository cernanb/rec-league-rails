class AddMatchWinnerIdToGames < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :match_winner_id, :integer
  end
end
