class Season < ApplicationRecord
  has_many :games
  has_many :season_teams
  has_many :teams, through: :season_teams
end
