class RestaurantsController < ApplicationController
	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.new(restaurant_params)
		if @restaurant.save
			redirect_to @restaurant
		else
			render 'new'
		end
	end

	def show
		@restaurant = Restaurant.find(params[:id])
		@item = @restaurant.items.build 
		@items = @restaurant.items
		@categories = @restaurant.categories
		@category = @restaurant.categories.build
	end

	def index
		@restaurants = Restaurant.all
	end

	def menu
		@restaurant = Restaurant.find(params[:id])
		render :layout => 'menu', formats: [:pdf], disposition: 'inline'
	end

	private

	def restaurant_params
		params.require(:restaurant).permit(:name, :location)
	end
end
