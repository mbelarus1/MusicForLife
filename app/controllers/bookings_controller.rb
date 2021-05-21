class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :create, :edit, :update, :destroy]

  def show
  end

  def new
    @listing = Listing.find(params[:listing_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user  = current_user
    @booking.listing = Listing.find(params[:listing_id])

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
    redirect_to booking_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end


  def booking_params
    params.require(:bookings).permit(:start_date, :end_date, :price)
  end
end

# user comes from devise -> current_user
# listing
