require 'spec_helper'

describe "StaticPages" do

	describe "Home page" do

		it "should have the content 'Menu App'" do
			visit '/'
			expect(page).to have_content('Menu App')
		end
	end

	describe "About page" do

		it "should have the content 'About'" do
			visit '/about'
			expect(page).to have_content('About')
		end
	end
end
