class RatesController < ApplicationController
	def new
      @rate = Rate.new(user_params)
    end

	def create
		if current_user
			@review = Review.find(params[:review_id])
			@rate = Rate.new

			if @rate.save!
				redirect_to @rate.review
				# Handle a successful save.
			else
				render 'new'
			end
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

