class UsersController < ApplicationController

  def show
    @user = User.find_by slug: params[:slug]
    @tweets = @user.tweets
    @following = current_user.all_following
    @followers = current_user.followers
  end

end
