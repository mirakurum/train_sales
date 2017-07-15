class RailwayStationsController < ApplicationController

  def index
    @railway_stations = RailwayStation.all
  end

  def new
    @railway_station = RailwayStation.new
  end

  def create
    @railway_station = RailwayStation.new(railway_station_params)

    @railway_station.save
    redirect_to @railway_station
  end

  def show
    @railway_station = RailwayStation.find(params[:id])
  end

  private

  def railway_station_params
    params.require(:railway_station).permit(:title)
  end
end
