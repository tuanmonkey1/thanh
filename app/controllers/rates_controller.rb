class RatesController < ApplicationController
	def new
      @rate = Rate.new(user_params)
    end

	def create
		if current_user
			@review = Review.find(params[:review_id])
			@rate = @review.rates.new rating_params
			@rate.user = current_user

			if @rate.save!
				redirect_to @rate.review
			else
				render 'new'
			end
		end
	def index
		@rate = Rate.all
	end
	
	private
	
	def rating_params
	  params.require(:rate).permit(:star, :user_id, :review_id)	  	
	end
end