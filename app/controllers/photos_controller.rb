class PhotosController < ApplicationController
  def index
    @drink = Drink.find(params[:drink_id])
    @photos = Photo.where(drink: @drink)
  end

  def new
    @photo = Photo.new(drink_id: params[:drink_id])
  end

  def create
    drink = Drink.find(params[:drink_id])
    photo = Photo.new(drink: drink, photo_params)

    if photo.save
      redirect_to drink_photos_path(drink), notice: 'Photo was added.'
    else
      render :new
    end
  end

  private
  def photo_params
    params.require(:photo).permit(:url)
  end
end
