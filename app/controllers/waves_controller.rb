class WavesController < ApplicationController

  before_action do
    if session[:photon_id].present?
    else
      redirect_to sign_in_path
    end
  end


  def index
    if params[:unfollow_photon_id]
      @followings = Following.where(photon_id: params[:unfollow_photon_id], follower_id: current_photon.id )
      @followings.first.destroy
      redirect_to root_path, :flash => { :info => "The user was successfully unfollowed" }
    end
    @photons = Photon.all
    @waves = current_photon.waves.order("created_at").reverse
    @wave = Wave.new
    @followings = Photon.following(@current_photon.id).page(params[:page]).per(3)
  end

  def post
    @post = Wave.new(params.require(:wave))
    @post.photon = current_photon
    if @post.save
      redirect_to root_path
    else
      render :index
    end
  end
end
