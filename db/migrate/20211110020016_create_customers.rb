class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :language
      t.integer :account_type

      t.timestamps
    end
  end
end
