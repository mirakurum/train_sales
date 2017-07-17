class RailCarsController < ApplicationController
  def index
    @rail_cars = RailCar.all
  end

  def show
    @rail_car = RailCar.find(params[:id])
  end

  def new
    @rail_car = RailCar.new
  end

  def edit
    @rail_car = RailCar.find(params[:id])
  end

  def create
    @rail_car = RailCar.new(rail_car_params)
    if @rail_car.save
      redirect_to @rail_car
    else
      render 'new'
    end
  end

  def update
    @rail_car = RailCar.find(params[:id])
    if @rail_car.update(rail_car_params)
      redirect_to @rail_car
    else
      render 'edit'
    end
  end

  def destroy
    @rail_car = RailCar.find(params[:id])
    @rail_car.destroy
    redirect_to rail_cars_path
  end

  private

  def rail_car_params
    params.require(:rail_car).permit(:number, :seat, :rc_type, :train_id)
  end
end

