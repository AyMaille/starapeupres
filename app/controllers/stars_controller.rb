class StarsController < ApplicationController
  def index
    @stars = Star.all
  end

  def show
    @star = Star.find(params[:id])
  end

  private

  def star_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
