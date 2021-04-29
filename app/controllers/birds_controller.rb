class BirdsController < ApplicationController
  def index
    @birds = Bird.all
  end

  def show
    @bird = Bird.find(params[:id])
    authorize @bird
  end

  def new
    @bird = Bird.new
    authorize @bird
  end

  def create
    @bird = Bird.new(bird_params)
    authorize @bird
    if @bird.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @bird = Bird.find(params[:id])
    authorize @bird
  end

  def update
    authorize @bird
    @bird = Bird.find(params[:id])
    @bird.update(bird_params)
    redirect_to bird_path(@bird)
  end

  def destroy
    authorize @bird
    @bird = Bird.find(params[:id])
    @bird.destroy
    redirect_to birds_path
  end

  def daily
    @bird = Bird.all.sample
    authorize @bird
    @spots = Spot.where(bird: @bird).order(spot_date: :desc).limit(5)
    authorize @spots
    # @spots = @spots.sort_by &:spot_date

  end

  private

  def bird_params
    params.require(:bird).permit(:name, :latin_name, :image, :description)
  end
end
