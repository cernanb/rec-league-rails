class AddWeekIdToGames < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :week_id, :integer
  end
end
