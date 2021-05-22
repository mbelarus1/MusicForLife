class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @listings = Listing.last(3)
  end

  def profile
  end
end
