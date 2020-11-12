class ProductsController < ApplicationController

	def index
		@products = Product.where("distribute = ?", params[:distribute])
	end
	def show
		@product = Product.find(params[:id])
	end

	def new
		@product = Product.new
		@product_items = Product.where("distribute = ?", params[:distribute]).paginate(page: params[:page]).per_page(10)
	end
	def create
		@product = Product.new(products_params)
		@product.image.attach(params[:product][:image])
		if @product.save
			 flash[:success] = "Product created!"
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
		redirect_to pages_iems_url
	end

	private
	def products_params
		params.require(:product).permit(:title, :description,:content, :price, :distribute, :image)
	end
end