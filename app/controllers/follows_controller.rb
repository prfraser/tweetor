class FollowsController < ApplicationController
  before_action :authenticate_user!
  respond_to :js

  def create
    @user = User.find(params[:user_id])
    current_user.follow(@user)
    respond_to do |format|
      format.html { redirect_to tweets_url, notice: "Followed #{@user.slug}" }
      format.json { head :no_content }
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    current_user.stop_following(@user)
    respond_to do |format|
      format.html { redirect_to tweets_url, notice: "Unfollowed #{@user.slug}" }
      format.json { head :no_content }
    end
  end
end