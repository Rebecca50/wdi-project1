require 'withings'

module Compost
  def self.user
    Withings.consumer_secret = ENV.fetch("WITHINGS_CONSUMER_SECRET")
    Withings.consumer_key = ENV.fetch('WITHINGS_CONSUMER_KEY')
    Withings::User.authenticate(ENV.fetch("WITHINGS_USER_ID"), ENV.fetch('WITHINGS_OAUTH_TOKEN'), ENV.fetch('WITHINGS_OAUTH_TOKEN_SECRET'))
  end

  def self.weighings
    self.user.measurement_groups.map{|group| group.weight}
  end

  def self.test
    puts 'Compost Module found'
  end
end



