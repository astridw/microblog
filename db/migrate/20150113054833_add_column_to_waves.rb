class AddColumnToWaves < ActiveRecord::Migration
  def change
    add_column :waves, :user_id, :integer
  end
end
