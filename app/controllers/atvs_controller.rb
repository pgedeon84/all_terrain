class AtvsController < ApplicationController

  def index
    @atvs = Atv.all
  end

  def show
    @atv = Atv.find(params[:id])

    @booking = Booking.new
    @booking.atv_id = @atv.id

  end

  def new
    @atv = Atv.new
  end

  def create
    @atv = Atv.new(atv_params)
    @atv.user = current_user
    if @atv.save
    @atv.user = current_user
      redirect_to atv_path(@atv)
    else
      render :new
    end
  end

  private

  def atv_params
    params.require(:atv).permit(:make, :model, :year, :price, :photo)
  end
end
