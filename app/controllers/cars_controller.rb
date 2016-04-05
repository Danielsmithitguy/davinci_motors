class CarsController < ApplicationController
  before_action :set_car, only: [:edit, :update]

  def index
    @cars = Car.all
  end

  def edit
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    creation_message = "#{@car.year} #{@car.make} #{@car.model} created"
    if @car.save
      redirect_to cars_path,
        :notice => creation_message
    end
  end

  def update
    @car.update(car_params)
    redirect_to(cars_path)
  end

  private
  def car_params
    params.require(:car).permit([:year, :make, :model, :price])
  end

  def set_car
    @car = Car.find(params[:id])
  end
end
