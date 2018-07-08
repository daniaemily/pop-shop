require 'monetize'

class Product < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  monetize :asking_price_cents

  validates :photo, presence: true
  validates :asking_price_cents, presence: true
  validates :title, presence: true
  validates :description, length: { maximum: 44,
      too_long: "%{count} characters is the maximum allowed" }
end
