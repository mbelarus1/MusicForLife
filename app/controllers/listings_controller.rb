class ListingsController < ApplicationController
  before_action :set_listing, only: [:edit, :create, :update, :destroy]

  def index
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      redirect_to listing_path(@listing)
    else
      render :new
    end
  end

  def edit
  end


  def update
      @listing = Listing.find(params[:id])
      @listing.update(listing_params])
      redirect_to listing_path(@listing)
  end

  def destroy
    @listing.destroy
    redirect_to listing_path
  end

  private

  def set_listing
    @listing = Listing.find(params[:id])
  end

  def listing_params
    params.require(:listing).permit(:title, :description)
  end
end
