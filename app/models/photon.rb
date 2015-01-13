class Photon < ActiveRecord::Base
  has_many :waves
  has_many :photons, through: :photon, class_name: "Photon"
  validates :photonname, presence: true
  validates :password, presence: true, confirmation: true
  validates :photo_url, presence: true
end
