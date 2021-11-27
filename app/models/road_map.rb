class RoadMap < ApplicationRecord
  belongs_to :category
  belongs_to :partner

  has_one_attached  :presentation_video
  has_many_attached :presentation_photos

  has_rich_text :description

  has_many :tours, :dependent => :destroy
end
