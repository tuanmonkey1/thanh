class RequestsController < ApplicationController


	def new
		@request= Request.new
		@product = Product.find(params[:product_id])
	end
	
	def create
		@request = Request.new(request_params)
		if @request.save
			redirect_to  root_url
		else
			#@product = Product.find_by id: request_params[:product_id]
			render :new
		end
	end


	private

		def request_params
			params.require(:request).permit(:name, :phone, :address, :quantity, :product_id)
		end
end
