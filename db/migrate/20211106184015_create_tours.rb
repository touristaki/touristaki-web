class CreateTours < ActiveRecord::Migration[6.0]
  def change
    create_table :tours do |t|
      t.string :title
      t.references :category, null: false, foreign_key: true
      t.datetime :date
      t.string :embed
      t.references :partner, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
