class Product < ApplicationRecord
	has_one_attached :image
	validates :title, presence: true, length: { maximum: 50 }
	validates :description, presence: true, length: { maximum: 50 }
	validates :price, presence: true, length: { maximum: 50 }
	validates :distribute, presence: true
	validates :image, content_type: { in: %w[image/jpeg image/gif image/png],
									message: "must be a valid image format" },
					   size:  	  { less_than: 5.megabytes,
									message: "should be less than 5MB" }
	enum distributes: {stage: 1, studio: 2, audiophile: 3}
  def display_image
	  image.variant(resize_to_limit: [500, 500])
  end
end
