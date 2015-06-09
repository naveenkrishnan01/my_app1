class TwitterSessionController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    @user_tweets = UserTweet.find_by_provider_and_uid(auth["provider"], auth["uid"]) || UserTweet.create_with_omniauth(auth)
  end
end