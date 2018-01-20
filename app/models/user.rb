class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :user_teams, foreign_key: "player_id"
  has_many :teams, through: :user_teams

  has_many :player_stats, foreign_key: "player_id"
  has_many :stats, through: :player_stats

  def self.top_ten_receivers
    all.sort{|a, b| b.total_rec_yards <=> a.total_rec_yards}[0..9]
  end

  def self.top_ten_rushers
    all.sort{|a, b| b.total_rush_yards <=> a.total_rush_yards}[0..9]
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def total_rec_yards
    player_stats
      .where("stat_id = ?", 1)
      .sum(:yards)
  end
    
  def total_rush_yards
    player_stats
      .where("stat_id = ?", 2)
      .sum(:yards)
  end
      
  def total_yards
    player_stats
      .sum(:yards)
  end

end
