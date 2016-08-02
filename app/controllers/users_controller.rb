class UsersController < ApplicationController

  before_action :set_user

  def create
    render json: (@user.present? ? @user : create_user)
  end

  private

  def create_user
    User.create! user_params
  end

  def user_params
    params.permit(:device_id)
  end

  def set_user
    @user ||= User.find_by_device_id params[:device_id]
  end

end
