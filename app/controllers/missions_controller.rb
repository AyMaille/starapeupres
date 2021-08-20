class MissionsController < ApplicationController

  def index
    if current_user.performer == true
      @missions = Mission.where(star_id: Star.find_by(user_id: current_user.id))
    else
      @missions = Mission.where(user_id: current_user.id)
    end
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
