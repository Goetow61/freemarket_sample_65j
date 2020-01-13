class Image < ApplicationRecord
  mount_uploader :src, ImageUploader
  belongs_to :item, dependent: :destroy
  validates :src ,presence: true
  default_scope -> { order(created_at: :desc) }
end
