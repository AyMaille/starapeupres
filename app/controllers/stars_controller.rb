class StarsController < ApplicationController
  def index
    @stars = Star.all
  end

  def show
    @star = Star.find(params[:id])
    @mission = Mission.new(star: @star)
  end

  def new
    @star = Star.new
  end

  def create
    @star = Star.new(star_params)
    @star.user_id = current_user.id
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
    params.require(:star).permit(:first_name, :last_name, :address, :email_address, :performer_name, :user_id, :decription, :category, :photo)
  end
end
