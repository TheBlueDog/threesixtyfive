class AddApertureToSnaps < ActiveRecord::Migration
  def change
    add_column :snaps, :aperture, :string
  end
end
