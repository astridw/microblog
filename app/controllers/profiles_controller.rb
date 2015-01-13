class ProfilesController < ApplicationController
  before_action do
    if session[:user_id].present?
    else
      redirect_to sign_in_path
    end
  end

  def show
    @user = User.find_by username: params[:username]
  end


  def follow
    @follow.followed_at = DateTime.now
    redirect_to root_path
  end


  def create_follower
    @new_follower = Following.new(user_id: session[:user_id], follower_id: params[:follower_id])
    if @new_follower.save
      redirect_to root_path
    else
      redirect_to profile_path(id: params[:follower_id])
    end
  end

  def destroy_follower
    Following.find_by(user_id: params[:user_id], follower_id: params[:follower_id]).destroy
    redirect_to profile_path(id: params[:follower_id])
  end


end
