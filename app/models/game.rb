class Game < ApplicationRecord
  has_many :player_stats
  belongs_to :season
  belongs_to :week

  has_many :matches
  has_many :teams, through: :matches
end
