require 'spec_helper'

describe Restaurant do
	before do
		@restaurant = Restaurant.new(name: "Generic cafe", description: "A place to eat") 
	end
	
	subject { @restaurant }

	it { should respond_to(:name) }
	it { should respond_to(:description) }

	it { should be_valid }

	describe "when name is not present" do
		before { @restaurant.name = nil }
		it { should_not be_valid }
	end

	describe 'with description that is too long' do
		before { @restaurant.description = 'a' * 201 }
		it {should_not be_valid }
	end
end
