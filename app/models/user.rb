class User < ActiveRecord::Base
  has_many :pick_ups
  has_many :team_memberships
  # has_many :teams, :through => :team_memberships
  has_many :teams, through: :team_memberships

  has_secure_password
end
