class AddSeasonIdToWeeks < ActiveRecord::Migration[5.1]
  def change
    add_column :weeks, :season_id, :integer
  end
end
