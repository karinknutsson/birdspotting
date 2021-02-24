class SpotsController < ApplicationController
  def index
    @spots = Spot.all
  end

  def show
    @spot = Spot.find(params[:id])
  end

  def new
    set_bird
    @spot = Spot.new
    authorize @spot
  end

  def create
    set_bird
    @spot = Spot.new(spot_params)
    @spot.bird = @bird
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

  def set_bird
    @bird = Bird.find(params[:bird_id])
  end

  def spot_params
    params.require(:spots).permit(:date, :time, :location, :number, :bird_id, :user_id)
  end
end
