class RoadMap < ApplicationRecord
  belongs_to :category
  belongs_to :partner

  has_one_attached  :presentation_video
  has_many_attached :presentation_photo

  has_many :tours
end
