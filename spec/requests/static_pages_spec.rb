require 'spec_helper'

describe "StaticPages" do

	subject { page }

	describe "Home page" do
		before { visit '/' }
		it { should have_content('Menu App') }
	end

	describe "About page" do
		before { visit '/about' }
		it { should have_content('About') }
		it { should have_title(full_title('About')) }
	end

	describe "Sign in page" do
		before { visit '/sign_in' }
		it { should have_content('Sign in') }
		it { should have_title(full_title('Sign in')) }
	end
end
