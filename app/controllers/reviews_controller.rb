class ReviewsController < ApplicationController
	def create
		@item = Item.find(params[:review][:item_id])
		@review = @item.reviews.build(review_params)
		if @review.save
			redirect_to @review.item
		else
			redirect_to @review.item
		end
	end

	private

	def review_params 
		params.require(:review).permit(:content, :item_id, :user_id)
	end

end
