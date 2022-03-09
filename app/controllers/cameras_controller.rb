class CamerasController < ApplicationController
  before_action :authenticate_admin!, only: %i[new create edit update]
  def index
  end

  def new
    @camera = Camera.new
  end

  def create
    @cameras = Camera.new
    if @camera.save
      
    end
  end

  private
  def camera_params
    params.require(:camera).permit(:title, :image)
  end
end
