class Tour < ApplicationRecord
  belongs_to :category
  belongs_to :partner

  has_one_attached  :video_apresentation
  has_many_attached :apresentation
end
