class AddTakenAtToSnaps < ActiveRecord::Migration
  def change
  	add_column :snaps, :taken_at, :datetime
  end
end
