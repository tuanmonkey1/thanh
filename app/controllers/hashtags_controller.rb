class HashtagsController < ApplicationController
  before_action  only: [:index, :edit, :update, :destroy]

  def show
  	@hashtag = Hashtag.find(params[:id])
  end
  def index
    @hashtag = Hashtag.new
  	@hashtags = Hashtag.paginate(page: params[:page], per_page: 3)
  end

  def new
  	@hashtag = Hashtag.new
  end

  def create
  	@hashtag = Hashtag.new(hashtag_params)
		if @hashtag.save
			# Handle a successful save.
      respond_to do |format|
        format.html {render partial: 'hashtag', locals: {hashtag: @hashtag} }
      end
		else
			render 'new'
		end
  end

  def edit
  	@hashtag = Hashtag.find(params[:id])
  end

  def update
		@hashtag = Hashtag.find(params[:id])
		if @hashtag.update(hashtag_params)
			flash[:success] = "Hashtag updated"
			redirect_to hashtags_url
		else
			render 'edit'
		end
	end

  def destroy
    Hashtag.find(params[:id]).destroy
    flash[:success] = "Hashtag deleted"
    # 
    respond_to do |format|
        format.html {redirect_to hashtags_url}
        format.json {render json: {result: 'OK', id: params[:id]} }
      end
  end

  private
	def hashtag_params
		params.require(:hashtag).permit(:name)
									   
	
	end
end
