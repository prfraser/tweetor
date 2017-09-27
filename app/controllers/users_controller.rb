class UsersController < ApplicationController

  def show
    @user = User.find_by slug: params[:slug]
    @tweets = @user.tweets
    @follows = current_user.all_follows
  end

end
