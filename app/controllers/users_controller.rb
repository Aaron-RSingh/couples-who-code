class UsersController < ApplicationController

    def show 
        @user = User.find(params[:id])
    end 
    
    def home
        render :home
    end

    def new 
        @user = User.new 
    end 

    def create
     @user = User.create(user_params)
     session[:user_id] = @user.id
    #add a redirect path
    end 

    private 

   def user_params 
    params.require(:user).permit(:first_name, :last_name, :email, :password, :tagline, :age, :bio, :picture)
   end 

end
