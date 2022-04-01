class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about ]

  def home
  end

  def profile
    @user = User.find(params[:id])
    @spots = Spot.where(user: @user)
    @recent_spots = Spot.where(user: @user).order(spot_date: :desc).limit(7)
  end

  def settings
    @user = User.find(params[:id])
  end

  def life_list
    @user = User.find(params[:id])
    @spots = Spot.where(user: @user)
    @ids = []
    @spots.each { |spot| @ids.push(spot.bird_id) if @ids.none? { |id| id == spot.bird_id } }

    @birds = Bird.where(id: @ids).order(:name)
    #binding.pry
  end
end
