class InterestsController < ApplicationController

  def index 
    @interests = Interest.all 
  end 

  # def show
  #   @interest = Interest.find(params[:id])
  # end

end
