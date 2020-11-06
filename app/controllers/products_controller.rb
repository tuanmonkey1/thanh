class ProductsController < ApplicationController

	def index
		@products = Product.all
	end
	def show
		@products = Product.find(params[:id])
	end

	def new
		@products = Product.new
	end
	def create
		@products= Product.new(products_params)
	end
	def update
		@products = Product.find(params[:id])
		if @products.update(products_params)
			flash[:success] = "Product updated"
			redirect_to @products
		else
			render 'edit'
		end
	end
	def destroy
		@products = Product.find(params[:id])
		@products.destroy
		redirect_to @products
	end
	private
	def products_params
		params.require(:products).permit(:name, :price)
	end
end