class ReviewsController < ApplicationController

	#before_action :logged_in_user, only: [:create, :destroy]
	before_action :correct_user, only: :destroy

	def new
	    if logged_in?
	      @review = current_user.reviews.build
	      @feed_items = current_user.feed.paginate(page: params[:page]).per_page(10)
	    end
	end

	def create
	  @review = current_user.reviews.build(review_params)
	  @review.image.attach(params[:review][:image])
      if @review.save
        flash[:success] = "Review created!"
        redirect_to pages_review_url
      else
      	@feed_items = current_user.feed.paginate(page: params[:page]).per_page(10)
        render 'static_pages/review'
      end
	end

	def destroy
	  @review.destroy
	  flash[:success] = "Review deleted"
	  redirect_to request.referrer || pages_review_url
	end

	def show
	  @review = Review.find(params[:id])
	  @comments = @review.comments
	  @comment = Comment.new
	end

	private

	  def review_params
		params.require(:review).permit(:title,:description, :content, :image)
      end

      def correct_user
		@review = current_user.reviews.find_by(id: params[:id])
		redirect_to root_url if @review.nil?
	  end


end
