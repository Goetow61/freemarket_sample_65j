class Image < ApplicationRecord
  mount_uploader :src, ImageUploader
  belongs_to :item
  validates :src ,presence: true
  default_scope -> { order(created_at: :desc) }
end
