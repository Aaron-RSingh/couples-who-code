class ConnectionsController < ApplicationController
    before_action :user_id, only: [:show, :create]
    include ApplicationHelper

    def show 
    end 

    def new 
        @connection = Connection.new
    end 
    
    def create 
        #need to map through instance of user and grab the id number for the companion.
        #@connection = Connection.new(user: current_user, meetup_id: params[:connection][:meetup_id], companion: excluded_user_interest(current_user))

        redirect_to user_path(@user)
    end 

    private 

    def connection_params
        params.require(:connection).permit(:companion, :meetup_id)
    end 

    def user_id
        @user = User.find(params[:id])
    end 


end
