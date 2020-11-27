class RequestsController < ApplicationController

	before_action :save_my_previous_url, only: [:new]

	def new
		@request= Request.new
		@product = Product.find(params[:product_id])
		@back_url = session[:my_previous_url]
	end
	
	def create
		@request = current_user.requests.build request_params
		if @request.save
			redirect_to  user_path(current_user.id)
		else
			@product = Product.find_by id: request_params[:product_id]
			render :new
		end
	end

	def show
		@request= Request.find(params[:id])
	end

	def index
  	  @requests = Request.paginate(page: params[:page], per_page: 5)
    end

    def edit
  	  @request = Request.find(params[:id])
  	  @product = Product.find(params[:product_id])
    end

    def destroy
      @request = Request.find(params[:id])
      @request.destroy
      flash[:success] = "Request deleted"
      redirect_to user_path(current_user)
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

		def save_my_previous_url
		    # session[:previous_url] is a Rails built-in variable to save last url.
		    session[:my_previous_url] = URI(request.referer || '').path
  		end
end
