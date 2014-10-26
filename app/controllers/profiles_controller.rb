class ProfilesController < ApplicationController
  def show
   @photon = Photon.find_by photonname: params[:photonname]
  end
end
