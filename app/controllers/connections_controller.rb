class ConnectionsController < ApplicationController
    before_action :user_id, only: [:show]#, :create]

    def show 
    end 

    def new 
        @connection = Connection.new
    end 
    
    def create 
        #need to map through instance of user and grab the id number for the companion.
        @connection = Connection.new(connection_params)
        # binding.pry
        # session[:user_id] = @user.id
       
        # @connection = Connection.new(user_id: session[:user_id], companion: params[:companion], meetup_id: params[:meetup_id])
        @connection.save 
        redirect_to user_path(current_user) #? redirect_to user_path(@user)
    end 

    # def create 
    #     @like = Like.new(interest_id: params[:like][:interest_id], user_id: session[:user_id])
    #     # session[:user_id] = @user.id
    #     #can change later?
    #     @like.save
    #     redirect_to user_path(session[:user_id])
    # end 

    private 

    def connection_params
        params.require(:connection).permit(:companion, :meetup_id, :user_id)
    end 

    def user_id
        @user = User.find(params[:id])
    end 


end
