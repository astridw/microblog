class RemoveColumnFromFollowings < ActiveRecord::Migration
  def change
    remove_column :followings, :photon_id, :integer
  end
end
