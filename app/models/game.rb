class Game < ApplicationRecord
  has_many :player_stats
  belongs_to :week

  
  has_many :matches
  has_many :teams, through: :matches
  # accepts_nested_attributes_for :matches

  def matches_attributes=(matches_hash)
    matches_hash.values.each do |team|
      self.matches.build(team_id: team[:team_id])
    end
  end
end
