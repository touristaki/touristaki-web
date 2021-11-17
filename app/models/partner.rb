class Partner < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :partner_information

  validates :name, presence: true
  has_many :road_maps
end
