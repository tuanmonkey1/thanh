class ProductsController < ApplicationController

	def show
		@product = Product.find(params[:id])
	end

	def new
		@product = Product.new
		@product_items = Product.where("distribute = ?", params[:distribute]).paginate(page: params[:page]).per_page(10)
	end
	def create
		@product = Product.new(products_params)
		@product.image1.attach(params[:product][:image1])
		@product.image2.attach(params[:product][:image2])

		if @product.save
			 flash[:success] = "Product created!"
			redirect_to collections_stage_url(distribute: @product.distribute)
		else
			render 'new'
		end
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		if @product.update(products_params)
			flash[:success] = "Product updated"
			redirect_to pages_iems_url
		else
			render 'edit'
		end
	end
	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		flash[:success] = "Hashtag deleted"
		respond_to do |format|
			format.html { redirect_to collections_stage_url(distribute: @product.distribute) }
			format.json { render json: { result: 'OK', id: @product.id } }
		end
	end

	private
	def products_params
		params.require(:product).permit(:title, :technology, :description,:content, :price, :distribute, :image1, :image2, :build_time, :driver_type, :driver_configuration, :frequency_response, :sensitivity, :impedance, :crossover, :isolation)
	end
end