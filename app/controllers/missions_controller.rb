class MissionsController < ApplicationController

  def index
    @missions = Mission.where(user: current_user)
  end

  def show
    @mission = Mission.find(params[:id])
  end

  def new
    @mission = Mission.new
  end
  def create
    @mission = Mission.new(mission_params)
    @star = Star.find(params[:star_id])
    @user = current_user.id
    @mission.star = @star
    @mission.user_id = @user
    @mission.price = rand(87..2400)
    if @mission.save
      redirect_to mission_path(@mission)
    else
      render 'stars/show'
    end
  end

  def edit
    @mission = Mission.find(params[:id])
  end

  def update
    @mission = Mission.find(params[:id])
    @mission.update(mission_params)
    redirect_to mission_path(@mission)
  end

  def destroy
    @mission = Mission.find(params[:id])
    @mission.destroy
    redirect_to missions_path(@mission)
  end

  private

  def mission_params
    params.require(:mission).permit(:special_request, :price, :user_id, :star_id, :name, :address, :booking)
  end
end
