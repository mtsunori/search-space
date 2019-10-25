class ImageController < ApplicationController
  belongs_to :shop, optional: true
  mount_uploader :image, ImageUploader
  validates :image, presence: true
end
