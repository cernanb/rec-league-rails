class Game < ApplicationRecord
  has_many :player_stats
  belongs_to :week

  
  has_many :matches
  has_many :teams, through: :matches
  has_one :winner, class_name: "Team", foreign_key: "winner_id"
  # accepts_nested_attributes_for :matches

  def matches_attributes=(matches_hash)
    matches_hash.values.each do |team|
      self.matches.build(team_id: team[:team_id])
    end
  end

  def same_team_opponent?
    self.matches[0].team_id == self.matches[1].team_id
  end
end
