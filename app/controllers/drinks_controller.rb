class DrinksController < ApplicationController

  def index
    @drinks = Drink.all
  end

  # GET /drink/1
  # GET /drink/1.json
  def show
    @drink = Drink.find(params[:id])
  end

  # GET /drinks/new
  def new
    @drink = Drink.new
  end
end
