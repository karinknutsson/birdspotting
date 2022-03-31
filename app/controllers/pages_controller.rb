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
end
