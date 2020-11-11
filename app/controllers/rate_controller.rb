class RateController < ApplicationController
def create
		@rate = Rate.new(user_params)
		if @rate.save
			redirect_to pages_review_url
			# Handle a successful save.
		else
			render 'new'
		end
	end