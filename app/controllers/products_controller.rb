class ProductsController < ApplicationController

	def index
		@products = Product.all
	end
	def show
		@product = Product.find(params[:id])
	end

	def new
		@product = Product.new
	end
	def create
		@product= Product.new(products_params)
		if @product.save
			redirect_to pages_iems_url
		else
			render 'new'
		end
	end
	def update
		@product = Product.find(params[:id])
		if @product.update(products_params)
			flash[:success] = "Product updated"
			redirect_to @products
		else
			render 'edit'
		end
	end
	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to @products
	end
	private
	def products_params
		params.require(:product).permit(:title, :description, :image_url, :price, :distribute)
	end
end