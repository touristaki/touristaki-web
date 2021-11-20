class Tour < ApplicationRecord
  belongs_to :road_map

  has_rich_text :description

  enum status: { pending: 1, processing: 10, closed: 20, accomplished: 30 }
end
