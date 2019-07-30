class SessionsController < ApplicationController
  def new 
  end 

  def create
    @user = User.find_by(username: params[:user][:username])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      # redirect_to pets_path
    else
      flash.now[:notice] = "Sorry, we can't find a user with that password. Please try again."
      render :new
    end
  end

  def destroy 
    session.destroy 
    redirect_to login_path
  end 

end 