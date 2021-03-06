require 'spec_helper'

describe Item do
	let(:user) { FactoryGirl.create(:user) }
	before do
		@item = user.items.new(name: "Cheeseburger", content: "A beef patty with lettuce, tomato, onion, and ketchup on a bun.")
	end

	subject { @item }

	it { should respond_to(:name) }
	it { should respond_to(:content) }
	it { should respond_to(:user) }

	its(:user) { should eq user }

	it { should be_valid }

	describe "when name is not present" do
		before { @item.name = nil }

		it { should_not be_valid }
	end
end
