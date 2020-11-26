class Rate < ApplicationRecord
	scope :star, ->{Rate.average(:star)}
	belongs_to :review
	belongs_to :user
end

