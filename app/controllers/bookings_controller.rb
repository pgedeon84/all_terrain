class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def create
    @atv = Atv.find(params[:atv_id])
    @booking = Booking.new(booking_params)
    @booking.atv = @atv
    if booking.save
      redirect_to atv_path(@atv)
    else
      render :new
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to atv_path(@booking.atv)
  end

  private

  def booking_params
    params.require(:booking).permit.(:from, :to, :atv_id)
  end
end
