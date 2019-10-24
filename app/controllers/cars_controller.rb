class CarsController < ApplicationController
  def index
      @cars = Car.all
  end

  def show
  end

  def edit
  end

  def new
  end
end
