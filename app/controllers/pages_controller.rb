class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about ]

  def home
  end

  def profile
    @user = User.find(params[:id])
    @spots = Spot.where(user: @user)
  end

  def settings
    @user = User.find(params[:id])
  end
end
