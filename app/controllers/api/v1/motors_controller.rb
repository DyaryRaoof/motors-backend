class Api::V1::MotorsController < ApplicationController
  def index
    @motors = Motor.all
    render json: @motors
  end

  def show
    @motors = Motor.find_by(id: params[:id])
    render json: @motors
  end
end
