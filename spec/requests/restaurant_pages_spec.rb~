require 'spec_helper'

describe "Restaurant pages" do

	subject { page }

	describe "profile page" do
		let(:restaurant) { FactoryGirl.create(:restaurant) }
		before { visit restaurant_path(restaurant) }

		it { should have_content(restaurant.name) }
		it { should have_title(restaurant.name) }
	end

	describe "create restaurant page" do
		before { visit new_restaurant_path }

		it { should have_content('Add new restaurant') }
		it { should have_title(full_title('Add restaurant')) }

		let(:submit) { "Create restaurant" }

		describe "with invalid information" do
			it "should not create a restaurant" do
				expect { click_button submit }.not_to change(Restaurant, :count)
			end
		end

		describe "with valid information" do
			before do
				fill_in "Name", with: "McDonald's"
				fill_in "Description", with: "A common restaurant"
			end

			it "should create a restaurant" do
				expect { click_button submit }.to change(Restaurant, :count).by(1)
			end
		end
	end
end
