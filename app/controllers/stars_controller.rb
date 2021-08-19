class StarsController < ApplicationController
  def index
    @stars = Star.all
  end

  def show
    @star = Star.find(params[:id])
    @mission = Mission.new(star: @star)
  end

  def show_star
      @star = Star.find_by(user_id: params[:id])
  end

  def new
    @star = Star.new
  end

  def create
    @star = Star.new(star_params)
    @star.user_id = current_user.id
    # @star.current_user.performer = true
    current_user.performer = true
    current_user.save
    if @star.save
      redirect_to show_star_path(@star.user_id)
    else
      render :new
    end
  end

  def destroy
    @star = Star.find(params[:id])
    @star.destroy
    redirect_to stars_path
  end

  def exist?(id)
    @star = Star.find_by(user_id: id)
    return @star.nil? ? true : false
  end

  private

  def star_params
    params.require(:star).permit(:first_name, :last_name, :address, :email_address, :performer_name, :user_id, :decription, :category, :photo)
  end
end
