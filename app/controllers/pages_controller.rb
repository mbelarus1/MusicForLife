class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def index
  end

  def profile
  end

  def product_detail
  end
end
