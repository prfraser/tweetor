class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @tweets = @user.tweets
  end

  def index
    @user = User.find_by slug: params[:slug]
    @tweets = @user.tweets
  end

end
