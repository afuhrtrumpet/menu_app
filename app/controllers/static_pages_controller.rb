class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def sign_in
  end

  def test
    render :layout => 'application', formats: [:pdf]
  end
end
