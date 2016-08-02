class PlacesController < ApplicationController

  before_action :set_place, only: [:destroy, :update]

  def index
    render json: Place.all
  end

  def create
    @place = Place.create place_params
    render json: @place
  end

  def destroy
    @place.destroy!
    render json: {
        message: "#{@place.name} was successfully deleted"
    }
  end

  def update
    @place.update! place_params
    render json: @place
  end

  private

  def place_params
    params.require(:place).permit(:lat, :lng, :name, :description, :image, :open_time, :close_time, :price, :promo_text)
  end

  def set_place
    @place ||= Place.find_by_id params[:id]

    render status: 404 unless @place.present?
  end

end