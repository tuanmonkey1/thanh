class RatesController < ApplicationController
	def new
      @rate = Rate.new(user_params)
    end

	def create
		if user_signed_in?
			@rate = Rate.new
			if @rate.save!
				redirect_to pages_review_url
				# Handle a successful save.
			else
				render 'new'
			end
	end

	def index
		@rate = Rate.all
	end
	private
	def rating_params
	  params.require(:rating).permit(:stars)
	end
end

