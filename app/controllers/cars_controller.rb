class CarsController < ApplicationController
  
  def index
    @cars = Car.all
    # TODO: get the 's' query parameter value
    # if its not set - set @cars to Car.all
    # otherwise if it is set - set @cars to Car.something
    # where something is filtering the cars by the s query parameter
  end
  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.save
    redirect_to '/cars', notice: 'Car was successfully created'
  end

  def show
    @car = Car.find params[:id]
  end

  def delete_car
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to '/cars', :notice => "Your car has been deleted"
    
  end

  

  def edit
  end

  private 

  def car_params 
    params.require(:car).permit(:make, :model, :year, :color, :image)
  end 
  
  
end