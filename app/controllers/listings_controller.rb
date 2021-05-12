class ListingsController < ApplicationController
  before_action :set_list

  def new
    @listing = Listing.new
  end

  def create
    @bookmark = Listing.new(listing_params)
    if @listing.save
      redirect_to listing_path(@listing)
    else
      render :new
    end
  end

  def edit
    @listing = Listing.find(listing_params)
  end

  def update
    @listing = Listing.find(listing_params)
    @listing.update(params[:restaurant])
    redirect_to listing_path(@listing)
  end

  def destroy
    @listing = Listing.find(listing_params)
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
