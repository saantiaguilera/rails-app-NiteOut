class PlacesController < ApplicationController

  def index
    render json: Place.all
  end

  def create
    @place = Place.new params[:place]
    @place.save!
  end

  def destroy
    @place = Place.find_by_id params[:id]
    @place.destroy!
  end

  def update
    #qcyo
  end

end
