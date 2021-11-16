class AddColumnsToTours < ActiveRecord::Migration[6.0]
  def change
    add_column :tours, :max_spectors, :integer
    add_column :tours, :processing_at, :datetime, after: :processing_at
    add_column :tours, :accomplished_at, :datetime, after: :accomplished_at
    add_column :tours, :closed_at, :datetime, after: :closed_at
    add_index :tours, [:accomplished_at, :status]
    add_index :tours, [:processing_at, :status]
    add_index :tours, [:closed_at, :status]
  end
end
