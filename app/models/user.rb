class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :user_teams, foreign_key: "player_id"
  has_many :teams, through: :user_teams

  has_many :player_stats, foreign_key: "player_id"
  has_many :stats, through: :player_stats
end
