class CreateUserTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :user_teams do |t|
      t.integer :player_number
      t.integer :team_id
      t.integer :player_id
      t.timestamps
    end
  end
end
