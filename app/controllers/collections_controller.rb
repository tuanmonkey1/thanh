class CollectionsController < ApplicationController

	before_action :find_product

	def stage
		
	end

	def studio
		
	end

	def audiophile
		
	end

	private

		def find_product
			@products = Product.where("distribute = ?", params[:distribute])
		end
end
