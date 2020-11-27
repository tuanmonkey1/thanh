class Admin::CollectionsController < ApplicationController
	before_action :require_admin

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

		def require_admin
	      if logged_in?
	        unless current_user.admin?
	          redirect_to root_path
	        end
	      else
	        flash[:notice] = "Only admin can access this page"
	        redirect_to root_path
	      end
	    end
end