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
    @star.email_address = current_user.email
    # @star.current_user.performer = true
    current_user.performer = true
    current_user.save
    if @star.save
      redirect_to show_star_path(@star.user_id)
    else
      render :new
    end
  end

  def edit
    @star = Star.find_by(user_id: params[:id])
  end

  def update
    @star = Star.find_by(user_id: params[:id])
    @star.update(star_params)
    redirect_to show_star_path(@star.user_id)
  end

  def destroy
    @star = Star.find_by(user_id: params[:id])
    current_user.performer = false
    current_user.save
    @star.destroy
    redirect_to root_path
  end

  def performer
    if current_user.performer?
      current_user.update(performer: false)
    else
      current_user.update(performer: true)
    end
    redirect_to root_path
  end

  private

  def star_params
    params.require(:star).permit(:first_name, :last_name, :address, :email_address, :performer_name, :user_id, :decription, :category, :photo)
  end
end
