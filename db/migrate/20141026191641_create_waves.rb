class CreateWaves < ActiveRecord::Migration
  def change
    create_table :waves do |t|

      t.timestamps
    end
  end
end
