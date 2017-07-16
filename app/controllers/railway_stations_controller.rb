class RailwayStationsController < ApplicationController

  def index
    @railway_stations = RailwayStation.all
  end

  def show
    @railway_station = RailwayStation.find(params[:id])
  end

  def new
    @railway_station = RailwayStation.new
  end

  def edit
    @railway_station = RailwayStation.find(params[:id])
  end

  def create
    @railway_station = RailwayStation.new(railway_station_params)
    if @railway_station.save
      redirect_to @railway_station
    else
      render 'new'
    end
  end

  def update
    @railway_station = RailwayStation.find(params[:id])
    if @railway_station.update(railway_station_params)
      redirect_to @railway_station
    else
      render 'edit'
    end
  end

  def destroy
    @railway_station = RailwayStation.find(params[:id])
    @railway_station.destroy
    redirect_to railway_stations_path
  end

  private

  def railway_station_params
    params.require(:railway_station).permit(:title)
  end
end
