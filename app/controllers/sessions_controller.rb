require 'user_tweet'
class SessionsController < ApplicationController
  def new
  end 

  def create 
    user = User.find_by(email: params[:session][:email]) 
      if user && user.authenticate(params[:session][:password])
      	log_in user
        remember user 
      	redirect_to user         
  else
  	flash.now[:danger] = 'Invalid email/password combination'
  	render 'new'
  end
end
  
  def twittercreate
      auth = request.env["omniauth.auth"]
     user_tweet = Usertweet.find_by_provider_and_uid(auth["provider"], auth["uid"]) || Usertweet.create_with_omniauth(auth)
    # session[:user_id] = user.id
     redirect_to 'http://www.twitter.com', :notice => "Signed in!"  
  end
  
  def destroy
  	log_out
  	redirect_to '/'
  end
end
