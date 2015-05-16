class UsersController < ApplicationController
  
  def show
    if (params[:id]) == 'contact'
      redirect_to '/contact'
    elsif (params[:id]) == 'about'
     redirect_to '/about' 
    elsif (params[:id]) == 'signup'
     redirect_to '/signup' 
     elsif (params[:id]) == 'logout'
      redirect_to '/'  
    else 
      flash.now[:success] = "Welcome to my Sample App!"
      @user = User.find(params[:id])
     # UserMailer.welcome_email(@user).deliver  This is used when not using sidekia but immediate response for web request
      UserMailer.delay_until(1.minute.from_now).welcome_email(@user)   
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
       if @user.save
         log_in @user 
        flash.now[:success] = "Welcome to Sample App!"
        redirect_to @user         
       else
        render 'new'
       end
  end

  def contact
    render_to '/contact'
  end
  
  def about
    render_to '/about'
  end

  def logout
    redirect_to '/'
  end  

   private
   def user_params
     params.require(:user).permit(:email, :password, :password_confirmation)
   end
end
  
