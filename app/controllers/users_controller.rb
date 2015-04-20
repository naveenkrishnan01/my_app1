class UsersController < ApplicationController
  
  def show
    if (params[:id]) == 'contact'
      redirect_to '/contact'
    elsif (params[:id]) == 'about'
     redirect_to '/about' 
    elsif (params[:id]) == 'signup'
     redirect_to '/signup' 
    else 
      @user = User.find(params[:id])
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
       if @user.save
        flash[:success] = "Welcome to the Sample App!"
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
   private
   def user_params
     params.require(:user).permit(:email, :password, :password_confirmation)
   end
end
  
