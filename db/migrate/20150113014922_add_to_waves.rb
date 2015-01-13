class AddToWaves < ActiveRecord::Migration
  def change
    add_column :waves, :photon_id, :integer
    add_column :waves, :post, :string

  end
end
