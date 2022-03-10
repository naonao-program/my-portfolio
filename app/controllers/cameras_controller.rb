class CamerasController < ApplicationController
  before_action :authenticate_admin!, only: %i[new create edit update]
  def index
    @cameras = Camera.all
  end

  def new
    @cameras = Camera.new
  end

  def create
    @cameras = Camera.new(camera_params)
    if @cameras.save
      redirect_to cameras_path
    else
      render :new
    end
  end

  private
  def camera_params
    params.require(:camera).permit(:title, :image, :insta_url, :youtube_url)
  end
end
