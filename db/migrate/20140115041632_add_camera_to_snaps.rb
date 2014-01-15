class AddCameraToSnaps < ActiveRecord::Migration
  def change
    add_column :snaps, :make, :string
    add_column :snaps, :model, :string
  end
end
