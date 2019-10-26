class CarsController < ApplicationController
  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.save
    redirect_to cars_path, notice: 'Car was successfully created'
  end
  def index

    # TODO: get the 's' query parameter value
    # if its not set - set @cars to Car.all
    # otherwise if it is set - set @cars to Car.something
    # where something is filtering the cars by the s query parameter


    @cars = Car.all
  end

  def show
    @car = Car.find params[:id]
  end

  def edit
  end

  private 

  def car_params 
    params.require(:car).permit(:make, :model, :year, :color, :image)
  end 
  
  def destroy
    @car = Car.find_by_unique_identifier(params[:id])
    @car.destroy
    redirect_to 'cars#show', :notice => "Your car has been deleted"
  end
end