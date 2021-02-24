class BirdsController < ApplicationController
  def index
    @birds = Bird.all
  end

  def show
    @bird = Bird.find(params[:id])
  end

  def new
    @bird = Bird.new
    authorize @bird
  end

  def create
    @bird = Bird.new(bird_params)
    if @bird.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @bird = Bird.find(params[:id])
  end

  def update
    @bird = Bird.find(params[:id])
    @bird.update(bird_params)
    redirect_to bird_path(@bird)
  end

  def destroy
    @bird = Bird.find(params[:id])
    @bird.destroy
    redirect_to birds_path
  end

  private

  def bird_params
    params.require(:birds).permit(:name, :latin_name, :image, :description)
  end
end
