class Thumbnail < ApplicationRecord
  belongs_to :comic
  mount_uploader :image, ThumbnailUploader
end
