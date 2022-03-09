class CamerasController < ApplicationController
  before_action :authenticate_admin!, only: %i[new create edit update]
  def index
  end

  def new
  end

  def create
  end

  private
  params.require(:camera).permit(:title, :image)
end
