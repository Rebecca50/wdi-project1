class User < ActiveRecord::Base

  has_many :pick_ups
  has_many :team_memberships
  has_many :teams, through: :team_memberships

  has_secure_password

  validates :email,  presence: true, confirmation: true, uniqueness: true, email: true
  validates :terms_of_service, acceptance: true
  validates :password, length: {within: 5..10, too_short: "Password length too short", too_long: "Password length too long"}

end
