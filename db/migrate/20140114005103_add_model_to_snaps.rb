class AddModelToSnaps < ActiveRecord::Migration
  def change
    add_column :snaps, :model, :string
  end
end
