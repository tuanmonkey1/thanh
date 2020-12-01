class Rate < ApplicationRecord
	scope :avg_star, ->{Rate.average(:star)}
	belongs_to :review
	belongs_to :user
end