class SpotsController < ApplicationController
  before_action :set_spot, only: %i[show edit update destroy]
  before_action :set_user

  def index
    @spots = Spot.where(user_id: @user.id).where.not(latitude: nil, longitude: nil)
    policy_scope @spots

    @markers = @spots.map do |spot|
      {
        lng: spot.longitude,
        lat: spot.latitude
      }
    end
  end

  def show
    authorize @spot

    @map_spot = @spot if !@spot.latitude.nil? && !@spot.longitude.nil?
    @markers = [{
      lng: @map_spot.longitude,
      lat: @map_spot.latitude
    }]
  end

  def new
    @spot = Spot.new
    authorize @spot
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.user = @user
    authorize @spot
    if @spot.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    authorize @spot
  end

  def update
    authorize @spot
    @spot.update(spot_params)
    redirect_to root_path(@spot)
  end

  def destroy
    authorize @spot
    @spot.destroy
    redirect_to root_path
  end

  private

  def set_spot
    @spot = Spot.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def spot_params
    params.require(:spot).permit(:spot_date, :time, :location, :number, :bird_id, :user_id, :note, photos: [])
  end
end
