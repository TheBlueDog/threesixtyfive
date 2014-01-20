class AddShutterSpeedToSnaps < ActiveRecord::Migration
  def change
    add_column :snaps, :shutter, :string
  end
end
