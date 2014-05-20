
module Compost
  USER_ID = '3344182'
  OAUTH_TOKEN =  "7cc232b09d891c62cd8d17980c0b51862ff9058326931154e8bb68c9fd46f"
  OAUTH_TOKEN_SECRET = "f4c4e9c55bec1955655125319555f79893b8462593b7e53800279c636b058"
  Withings.consumer_secret = "e7698772f0596c6cbb0f90bbe9048575162e32940431f42f7ef7f264c3f8d"
  Withings.consumer_key = "3b70529f4d4153e7d25880c0362f9ce2d7716cb9523d500dbd0ff86d9801"

  def user
    Withings::User.authenticate(USER_ID, OAUTH_TOKEN, OAUTH_TOKEN_SECRET)
  end

  def self.weighings
    user.measurement_groups.map{|group| group.weight}
  end

end
