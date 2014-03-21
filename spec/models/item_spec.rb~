require 'spec_helper'

describe Item do
	let(:restaurant) { FactoryGirl.create(:restaurant) }
	before do
		@category = restaurant.categories.new(id: 1, name: "Dollar Menu");
		@item = restaurant.items.new(name: "Cheeseburger", content: "A beef patty with lettuce, tomato, onion, and ketchup on a bun.", category_id: @category.id)
		@category.items.push(@item)
	end

	subject { @item }

	it { should respond_to(:name) }
	it { should respond_to(:content) }
	it { should respond_to(:restaurant) }
	it { should respond_to(:category) }

	its(:restaurant) { should eq restaurant }

	it { should be_valid }

	describe "when name is not present" do
		before { @item.name = nil }

		it { should_not be_valid }
	end

	describe "when category is not present" do
		before { @item.category_id = nil }

		it { should_not be_valid }
	end
	
	describe "when restaurant is not present" do
		before { @item.restaurant_id = nil }

		it { should_not be_valid }
	end
end
