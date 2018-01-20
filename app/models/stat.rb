class Stat < ApplicationRecord
  has_many :player_stats
  has_many :players, through: :player_stats, class_name: "User"
end
