class AtvsController < ApplicationController

  def index
    @atvs = Atv.all
  end

  def show
    @atv = Atv.find(params[:id])
  end

  def new
    @atv = Atv.new
  end

  def create
    @atv = Atv.new(atv_params)
    if @atv.save
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
