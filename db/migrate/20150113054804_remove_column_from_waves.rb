class RemoveColumnFromWaves < ActiveRecord::Migration
  def change
    remove_column :waves, :photon_id, :integer
  end
end
