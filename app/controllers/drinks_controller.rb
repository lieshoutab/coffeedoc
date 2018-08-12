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

  def edit
    @drink = Drink.find(params[:id])
  end

  def update
    @drink = Drink.find(params[:id])
      if @drink.update(drink_params)
       redirect_to drinks_path, notice: 'Drink was successfully updated.'

      else
       render :edit

      end
    end

def create
  @drink = Drink.new(drink_params)


      if @drink.save
        redirect_to drinks_path, notice: 'Coffee was successfully created.'
      end

end


private
def drink_params
  params.require(:drink).permit(:name)
end

end
