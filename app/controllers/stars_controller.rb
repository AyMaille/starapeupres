class StarsController < ApplicationController

  def index
    @stars = Star.all
  end

  def show
    @star = Star.find(params[:id])
  end

  def new
    @star = Star.new
  end

  def create
    @star = Star.new(star_params)
    if @star.save
      redirect_to star_path(@star)
    else
      render :new
    end
  end

  def destroy
    @star = Star.find(params[:id])
    @star.destroy
    redirect_to stars_path
  end

  private

  def star_params
    params.require(:star).permit(:first_name, :last_name, :address, :email_address, :performer_name, :category, :user_id)
  end
end
