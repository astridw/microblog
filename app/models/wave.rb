class Wave < ActiveRecord::Base
 belongs_to :photon
 validate length: {maximum:140, minimum:5}
end
