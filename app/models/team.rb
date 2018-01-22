class Team < ApplicationRecord
  has_many :user_teams
  has_many :players, through: :user_teams, class_name: "User"
  belongs_to :league, optional: true
  has_many :season_teams
  has_many :seasons, through: :season_teams
end
