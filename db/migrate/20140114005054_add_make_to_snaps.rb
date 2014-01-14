class AddMakeToSnaps < ActiveRecord::Migration
  def change
    add_column :snaps, :make, :string
  end
end
