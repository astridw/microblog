class User < ActiveRecord::Base
  has_many :wave
  has_many :followings
  has_many :followers, through: :followings, class_name: "User"

  validates :username, presence: true
  validates :password, presence: true, confirmation: true
end
