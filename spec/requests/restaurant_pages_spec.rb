require 'spec_helper'

describe "Restaurant pages" do

	subject { page }

	describe "profile page" do
		let(:restaurant) { FactoryGirl.create(:restaurant) }
		before { visit restaurant_path(restaurant) }

		it { should have_content(restaurant.name) }
		it { should have_title(full_title(restaurant.name)) }
	end

	describe "create restaurant page" do
		before { visit new_restaurant_path }

		it { should have_content('Add new restaurant') }
		it { should have_title(full_title('Add restaurant')) }

		let(:submit) { "Add this restaurant" }
		
		describe "with valid information" do
			let(:user) { User.new(name: "Tester Man") }
			
			before do
				controller.stub(:current_user => user)		

				fill_in "Name", with: "McDonald's"
				fill_in "Location", with: "New York"

				click_button("Find restaurant");
			end

			it "should create a restaurant" do
				expect { click_button submit }.to change(Restaurant, :count).by(1)
			end
		end
	end
end
