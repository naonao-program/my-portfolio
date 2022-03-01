class CamerasController < ApplicationController
  before_action before_action :authenticate_user!, only: %i[new create edit update]
  def index
  end

  def new
  end

  def create
  end
end
