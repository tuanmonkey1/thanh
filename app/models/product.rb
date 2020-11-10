class Product < ApplicationRecord
	validates :title, presence: true, length: { maximum: 50 }
	validates :description, presence: true, length: { maximum: 50 }
	validates :image_url, presence: true, length: { maximum: 50 }
	validates :price, presence: true, length: { maximum: 50 }
	validates :distribute, presence: true, length: { maximum: 50 }
end
