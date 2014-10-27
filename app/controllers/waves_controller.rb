class WavesController < ApplicationController



  def index
    current_photon = Photon.find(session[:photon_id])
    @photons = Photon.all
    @waves = current_photon.waves.order("created_at").reverse
    @wave = Wave.new
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
