class RoadMap < ApplicationRecord
  belongs_to :category
  belongs_to :partner

  has_one_attached  :presentation_video
  has_many_attached :presentation_photo

  # enum status: { pending: 1, processing: 10, closed: 20, accomplished: 30 }
end
