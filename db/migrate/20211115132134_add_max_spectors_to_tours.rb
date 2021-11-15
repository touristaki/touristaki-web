class AddMaxSpectorsToTours < ActiveRecord::Migration[6.0]
  def change
    add_column :tours, :max_spectors, :integer
  end
end
