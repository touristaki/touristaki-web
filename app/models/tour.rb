class Tour < ApplicationRecord
  belongs_to :category
  belongs_to :partner

  has_one_attached  :video_apresentation
  has_many_attached :apresentation

  enum status: { pending: 1, processing: 10, closed: 20, accomplished: 30 }
end
