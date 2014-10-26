class CreatePhotons < ActiveRecord::Migration
  def change
    create_table :photons do |t|

      t.timestamps
    end
  end
end
