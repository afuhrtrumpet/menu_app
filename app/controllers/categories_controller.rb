class CategoriesController < ApplicationController
	def create
		@restaurant = Restaurant.find(params[:category][:restaurant_id])
		@category = @restaurant.categories.build(category_params)
		if @category.save
			redirect_to @category.restaurant
		else
			redirect_to @category.restaurant
		end
	end

	private

	def category_params
		params.require(:category).permit(:name, :restaurant_id)
	end
end
