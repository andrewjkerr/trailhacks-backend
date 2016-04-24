class AddBeaconNumberToMarkers < ActiveRecord::Migration[5.0]
  def change
    add_column :markers, :beacon_number, :integer
  end
end
