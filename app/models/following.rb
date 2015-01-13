class Following < ActiveRecord::Base
  belongs_to :photons
  belongs_to :follower, class_name: 'Photon'
end
