class RelationshipsController < ApplicationController	

	def create
		@user = User.find(params[:followed_id])
		current_user.follow(@user)
		@review = Review.find_by id: params[:review_id]
		respond_to do |format|
			format.html { redirect_to @review }
			format.js
		end
	end
	

	def destroy
		@user = Relationship.find(params[:id]).followed
		current_user.unfollow(@user)
		@review = Review.find_by id: params[:relationship][:review_id]
		respond_to do |format|
			format.html { redirect_to @review }
			format.js
		end
	end
end
