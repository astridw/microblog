class AddIDsToFollowigs < ActiveRecord::Migration
  def change
    add_column :followings, :photon_id, :integer
    add_column :followings, :follower_id, :integer
  end
end
