class CreateTours < ActiveRecord::Migration[6.0]
  def change
    create_table :tours do |t|
      t.string :name
      t.datetime :live_date
      t.integer :status, default: 1
      t.string :video_link
      t.references :road_map, null: false, foreign_key: true

      t.timestamps
    end
  end
end
