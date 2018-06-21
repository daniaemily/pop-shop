require 'monetize'

class Product < ApplicationRecord
  monetize :asking_price_cents

  validates :image_url, presence: true
  validates :asking_price_cents, presence: true
  validates :title, presence: true
end
