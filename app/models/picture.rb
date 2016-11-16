class Picture < ApplicationRecord
  belongs_to :album

  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }

  validates_attachment :image, presence: true,
    content_type: { content_type: "image/jpeg" },
    size: { in: 0..20.kilobytes }
end
