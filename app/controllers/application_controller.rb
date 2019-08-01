class ApplicationController < ActionController::Base
  helper_method :current_user, :authorize_user, current_user_interests

  def current_user 
    if session[:user_id]
      User.find(session[:user_id])
    end 
  end 

  def authorize_user 
    unless current_user
      flash[:notice] = "Sorry, you need to be logged in to access that feature."
      redirect_to login_path
    end 
  end 

  def current_user_interests
    current_user.interests
  end 


end
