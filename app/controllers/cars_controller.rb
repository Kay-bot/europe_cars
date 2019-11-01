class CarsController < ApplicationController
  
    # TODO: get the 's' query parameter value
    # if its not set - set @cars to Car.all
    # otherwise if it is set - set @cars to Car.something
    # where something is filtering the cars by the s query parameter

  def index
    @search_term = "search_value"
    @posts = Post.all
  end

  def all_cars
    @allCars = Car.all
  end
  
  def new
    if current_user 
      @car = Car.new
    else 
      redirect_to '/login'
    end
  end

  def create
    if current_user 
      @car = Car.new(car_params)
      @car.user_id = current_user.id
      @car.save
      redirect_to @car, :notice => 'Car was successfully created'
    else 
      redirect_to '/login'
    end
  end

  def show
    @car = Car.find params[:id]
  end

  def delete_car
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to '/cars', :notice => "Your car has been deleted"
    
  end

  def update
    @car = Car.find(params[:id])

   @car.update(car_params)
      redirect_to @car, :notice => "Your car was successfully updated"

  end

  

  def edit
    @car = Car.find params[:id]
  end

  private 

  def car_params 
    params.require(:car).permit(:make, :model, :year, :color, :image, :price, :key_features)
  end 
  
  
end