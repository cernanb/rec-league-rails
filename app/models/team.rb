class Team < ApplicationRecord
  has_many :user_teams
  has_many :players, through: :user_teams, class_name: "User"
end
