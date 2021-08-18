class MissionsController < ApplicationController

  def index
    @missions = Mission.all
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
    if @mission.save
      redirect_to star_path(@star)
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
    redirect_to star_path(@mission.star)
  end

  def destroy
    @mission = Mission.find(params[:id])
    @mission.destroy
    redirect_to star_path(@mission.star)
  end

  private

  def mission_params
    params.require(:mission).permit(:special_request, :price, :user_id, :star_id)
  end
end
