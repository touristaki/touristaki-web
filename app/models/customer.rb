class Customer < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :language, presence: true
  validates :account_type, presence: true

  enum account_type: {free_customer: 0, pro_customer: 1}
end
