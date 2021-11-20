class AddDescriptionToTour < ActiveRecord::Migration[6.0]
  def change
    add_column :tours, :description, :string 
  end
end
