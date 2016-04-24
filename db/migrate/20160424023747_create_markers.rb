class CreateMarkers < ActiveRecord::Migration[5.0]
  def change
    create_table :markers do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.text :summary
      t.references :trail, foreign_key: true

      t.timestamps
    end
  end
end
