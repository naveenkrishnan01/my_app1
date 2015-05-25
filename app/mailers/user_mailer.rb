class UserMailer < ActionMailer::Base
  default from: "naveen1kris1@gmail.com"


  def welcome_email(user)
     @user = user
  #   @url = "http://localhost:3000/signup"
      mail(:to => @user.email, :subject => "Welcome to Naveen Personal site")
  end
end
