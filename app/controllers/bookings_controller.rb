class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    # @atv = Atv.find(params[:atv_id])

    # @booking = Booking.new
    # @booking.atv = @atv
  end

  def create
    @atv = Atv.find(params[:atv_id])
    @booking = Booking.new(booking_params)
    @booking.confirmed = false
    @booking.atv = @atv
    @booking.user = current_user
    if @booking.save

      redirect_to bookings_path
    else
      render "atvs/show"
    end
  end

  def update
    @booking = Booking.find(params[:id])

    @booking.confirmed = true
    @booking.save
    redirect_to bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to atv_path(@booking.atv)
  end

  private

  def booking_params
    params.require(:booking).permit(:from, :to, :atv_id, :user_id)
  end
end
