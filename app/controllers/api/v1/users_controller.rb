class Api::V1::UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      user = User.find_by(name: user_params[:name])
      render json: { error: @user.errors, user: user }, status: :unprocessable_entity
    end
  end

  def user_params
    params.require(:user).permit(:name)
  end
end
