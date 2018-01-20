class CreatePlayerStats < ActiveRecord::Migration[5.1]
  def change
    create_table :player_stats do |t|
      t.integer :player_id
      t.integer :stat_id
      t.integer :game_id
      t.integer :yards
     
      t.timestamps
    end
  end
end
