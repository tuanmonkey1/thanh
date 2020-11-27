class Product < ApplicationRecord

	scope :latest, -> { order(:created_at).last }

	has_one_attached :image1
	has_one_attached :image2
	validates :title, presence: true, length: { maximum: 50 }
	validates :technology, presence: true, length: { maximum: 50 }
	validates :description, presence: true, length: { maximum: 200 }
	validates :price, presence: true, length: { maximum: 50 }
	validates :content, presence: true
	validates :build_time, presence: true
	validates :distribute, presence: true
	validates :driver_type, presence: true
	validates :driver_configuration, presence: true
	validates :frequency_response, presence: true
	validates :sensitivity, presence: true
	validates :impedance, presence: true
	validates :crossover, presence: true
	validates :isolation, presence: true

	validates :image1, content_type: { in: %w[image/jpeg image/gif image/png],
									message: "must be a valid image format" },
					   size:  	  { less_than: 5.megabytes,
									message: "should be less than 5MB" }
	validates :image2, content_type: { in: %w[image/jpeg image/gif image/png],
									message: "must be a valid image format" },
					   size:  	  { less_than: 5.megabytes,
									message: "should be less than 5MB" }
	enum distributes: {stage: 1, studio: 2, audiophile: 3}
end
