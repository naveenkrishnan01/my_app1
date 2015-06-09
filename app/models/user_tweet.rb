class Usertweet < ActiveRecord::Base
def self.create_with_omniauth(auth)
    create! do |user_tweet|
      user_tweet.provider = auth["provider"]
      user_tweet.uid = auth["uid"]
      user_tweet.name = auth["name"]
    end
  end
end



