class Admin::RequestsController < ApplicationController
  before_action :require_admin
  before_action  only: [:index, :edit, :update, :destroy]

	def index
  	@requests = Request.paginate(page: params[:page], per_page: 5)
  end

  def destroy
    @admin_request=Request.find(params[:id])
    @admin_request.destroy
    flash[:success] = "Request deleted"
    redirect_to admin_requests_path
  end
    
  def show
    @admin_request=Request.find(params[:id])
  end
  private

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
