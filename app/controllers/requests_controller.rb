class RequestsController < ApplicationController
	before_action  only: [:index, :edit, :update, :destroy]

	def new
		@request= Request.new
		@product = Product.find(params[:product_id])
	end
	
	def create
		@request = current_user.requests.build request_params
		if @request.save
			redirect_to  product_requests_path(@request.product)
		else
			@product = Product.find_by id: request_params[:product_id]
			render :new
		end
	end

	def index
  	  @requests = Request.paginate(page: params[:page], per_page: 3)
    end

    def edit
  	  @request = Request.find(params[:id])
  	  @product = Product.find(params[:product_id])
    end

    def destroy
      @request = Request.find(params[:id])
      @request.destroy
      flash[:success] = "Request deleted"
      redirect_to product_requests_path(@request.product)
    end


    def update
		@request = Request.find(params[:id])
		if @request.update(request_params)
			flash[:success] = "Request updated"
			redirect_to product_requests_path(@request.product)
		else
			render 'edit'
		end
	end

	private

		def request_params
			params.require(:request).permit(:phone, :address, :quantity, :product_id)
		end
end
