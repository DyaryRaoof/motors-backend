class Api::V1::MotorsController < ApplicationController
  def index
    @motors = Motor.all
    render json: @motors
  end

  def show
    @motors = Motor.find_by(id: params[:id])
    render json: @motors
  end

  def create
    motor = Motor.new(params.permit(:name, :description, :price, :image))
    if motor.save
      render json: motor, status: :created
    else
      render json: { error: motor.errors, user: motor }, status: :error
    end
  end

  def destroy
    Motor.find(params[:id]).destroy
    render json: { message: 'removed' }
  end
end
