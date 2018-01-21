class Game < ApplicationRecord
  has_many :player_stats
  belongs_to :season
end
