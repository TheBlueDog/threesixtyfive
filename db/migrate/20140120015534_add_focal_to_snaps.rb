class AddFocalToSnaps < ActiveRecord::Migration
  def change
    add_column :snaps, :focal, :string
  end
end
