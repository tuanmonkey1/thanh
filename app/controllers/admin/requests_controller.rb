class Admin::RequestsController < ApplicationController
before_action  only: [:index, :edit, :update, :destroy]

	def index
  	  @requests = Request.paginate(page: params[:page], per_page: 3)
    end

    def destroy
    	
      @admin_requests=Request.find(params[:id])
      @admin_requests.destroy
      flash[:success] = "Request deleted"
      redirect_to admin_requests_path
    end
    

end
