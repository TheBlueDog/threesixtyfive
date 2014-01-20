class AddIsoToSnaps < ActiveRecord::Migration
  def change
    add_column :snaps, :iso, :integer
  end
end
