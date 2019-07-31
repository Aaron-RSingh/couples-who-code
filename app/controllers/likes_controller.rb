class LikesController < ApplicationController

  def index
    @like = Like.new
  end
end
