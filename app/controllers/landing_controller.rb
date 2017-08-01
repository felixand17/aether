class LandingController < ApplicationController
  def index
    render :file => 'public/aetersemantic/dashboard.html'
  end
end
