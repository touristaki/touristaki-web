class CreatePartnerInformations < ActiveRecord::Migration[6.0]
  def change
    create_table :partner_informations do |t|
      t.string :full_name
      t.string :language
      t.string :country
      t.string :contact_phone
      t.string :cpf
      t.string :cnpj
      t.string :cep
      t.string :city
      t.string :state
      t.string :address
      t.string :district
      t.integer :address_number
      t.references :partner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
