class Request < ApplicationRecord
	validates :name, presence: true, length: { maximum: 50 }
	validates :address, presence: true, length: { maximum: 80 }
	validates :phone, presence: true, length: { maximum: 30 }
end
