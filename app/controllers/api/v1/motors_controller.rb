class Api::V1::MotorsController < ApplicationController
  def index
    @motors = Motor.all
    render json: @motors
  end
end
