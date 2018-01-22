class Game < ApplicationRecord
  has_many :player_stats
  belongs_to :season

  has_many :matches
  has_many :teams, through: :matches
end
