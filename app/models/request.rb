class Request < ApplicationRecord

	belongs_to :product
	belongs_to :user
	validates :address, presence: true, length: { maximum: 80 }
	validates :phone, presence: true, length: { maximum: 30 }
	validates :quantity, presence: true, numericality: {greater_than: 0}

end
