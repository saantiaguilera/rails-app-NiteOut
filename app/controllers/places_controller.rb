class PlacesController < ApplicationController

  def index
    render json: Place.all
  end

  def create
    @place = Place.create place_params
    render json: @place
  end

  def destroy
    @place = Place.find_by_id params[:id]
    @place.destroy!
    render json: {
        message: "#{@place.name} was successfully deleted"
    }
  end

  def update
    @place = Place.find_by_id params[:id]
    @place.update! place_params
    render json: @place
  end

  private

  def place_params
    params.require(:place).permit(:lat, :lng, :name, :description, :image, :open_time, :close_time, :price, :promo_text)
  end

end