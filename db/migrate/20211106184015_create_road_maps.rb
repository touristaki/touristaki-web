class CreateRoadMaps < ActiveRecord::Migration[6.0]
  def change
    create_table :road_maps do |t|
      t.string :title
      t.references :category, null: false, foreign_key: true
      t.references :partner, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
