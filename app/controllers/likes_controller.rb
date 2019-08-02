class LikesController < ApplicationController

  before_action :user_id, only: [:show]

  def show
  end 

  def new
    @like = Like.new
  end

  def create 
    
    @like = Like.new(interest_id: params[:like][:interest_id], user_id: session[:user_id])
    # session[:user_id] = @user.id
    #can change later?
    @like.save
    redirect_to user_path(current_user)

  end 

  private 

  def like_params
    params.require(:like).permit(:interest_id)
  end 

  def user_id
    @user = User.find(params[:id])
  end 

end
