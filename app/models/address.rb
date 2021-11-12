class Address < ApplicationRecord
  belongs_to :customer

  validates :street, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: true
  validates :zip_code, presence: true
  validates :number, presence: true
  validates :complement, presence: true
end
