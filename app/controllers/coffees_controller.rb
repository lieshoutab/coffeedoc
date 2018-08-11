class CoffeesController < ApplicationController
  
  def index
    @coffees = Coffee.all
  end

  # GET /coffees/1
  # GET /coffees/1.json
  def show
    @coffee = Coffee.find(params[:id])
  end

  # GET /coffees/new
  def new
    @coffee = Coffee.new
  end
end
