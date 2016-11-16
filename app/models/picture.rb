class Picture < ApplicationRecord
  validates_attachment :image, presence: true,
    content_type: { content_type: "image/jpeg" },
    size: { in: 0..20.kilobytes }
end
