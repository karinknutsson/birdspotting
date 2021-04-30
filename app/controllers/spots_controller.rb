class SpotsController < ApplicationController
  before_action :set_user

  def index
    @spots = Spot.all
    authorize @spots

    @map_spots = Spot.where.not(latitude: nil, longitude: nil)
    @markers = @map_spots.map do |spot|
      {
        lng: spot.longitude,
        lat: spot.latitude
      }
    end
  end

  def show
    @spot = Spot.find(params[:id])
    authorize @spot

    @map_spot = @spot if (spot.latitude != nil && spot.longitude != nil)
    @markers = {
      lng: @spot.longitude,
      lat: spot.latitude
    }
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
    @spot = Spot.find(params[:id])
  end

  def update
    @spot = Spot.find(params[:id])
    @spot.update(spot_params)
    redirect_to root_path(@spot)
  end

  def destroy
    @spot = Spot.find(params[:id])
    @spot.destroy
    redirect_to root_path
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def spot_params
    params.require(:spot).permit(:spot_date, :time, :location, :number, :bird_id, :user_id)
  end
end
