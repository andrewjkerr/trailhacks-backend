class AddBeaconNumberToTrails < ActiveRecord::Migration[5.0]
  def change
    add_column :trails, :beacon_number, :integer
  end
end
