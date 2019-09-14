class Comic < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :volume, presence: true
  # mount_uploader :image, ImageUploader
  has_many :thumbnails
  accepts_nested_attributes_for :thumbnails
end
