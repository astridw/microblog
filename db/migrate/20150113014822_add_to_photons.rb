class AddToPhotons < ActiveRecord::Migration
  def change
    add_column :photons, :photonname, :string
    add_column :photons, :password, :string
    add_column :photons, :photo_url, :string

  end
end
