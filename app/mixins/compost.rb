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


#  config ={
#     :consumer_key =>ENV.fetch('WITHINGS_USER_ID')
#     :consumer_secret =>ENV.fetch('CONSUMER_SECRET')
#     }

#     user = Withings::REST::User.new(config)

#     user.search("user.measurement_groups.map{|group| group.weight}", :result_type => "recent").take(10).each do |group|
#   puts tweet.text
# end
