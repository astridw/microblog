class SessionsController < ApplicationController
  def new
  end

  def create
    photonname = params[:photonname]
    password = params[:password]

    photon = Photon.find_by photonname: photonname
    if photon.password == password
      session[:photon_id] = photon_id
      redirect_to root_path
    else
      render :new
    end
  end

  def signout
    sessions[:photon_id] = nil
    redirect_to root_path
  end

  def signup
    @photon = Photon.new
  end

  def create_photon
    @photon = Photon.new(params.require(:photon).permit(:photonname, :password,
     :password_confirmation :photo_url))

    if photon.save
      session[:photon_id] = @photon.id
      redirect_to root_path
    else
      render :signup
  end
end
