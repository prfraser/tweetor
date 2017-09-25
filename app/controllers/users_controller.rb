class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @tweets = @user.tweets
  end

  def index
    @user = User.find_by first_name: params[:first_name]
  end

end
