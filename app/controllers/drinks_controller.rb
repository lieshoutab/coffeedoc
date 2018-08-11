class DrinksController < ApplicationController

  def index
    @coffees = Drink.all
  end

  # GET /coffees/1
  # GET /coffees/1.json
  def show
    @coffee = Drink.find(params[:id])
  end

  # GET /coffees/new
  def new
    @coffee = Drink.new
  end
end
