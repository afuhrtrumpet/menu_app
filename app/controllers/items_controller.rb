class ItemsController < ApplicationController
	def create
		@restaurant = Restaurant.find(params[:item][:restaurant_id])
		@item = @restaurant.items.build(item_params)
		@category = Category.find(params[:item][:category_id])
		@category.items.push(@item)
		if @item.save
			redirect_to @item.restaurant
		else
			redirect_to @item.restaurant
		end
	end

	def show
		@item = Item.find(params[:id])
		@review = @item.reviews.build 
		@reviews= @item.reviews
	end

	private

	def item_params
		@category = Category.find_by name: params[:item][:category_id]
		params[:item][:category_id] = @category.id
		params.require(:item).permit(:name, :content, :restaurant_id, :category_id)
	end
end
