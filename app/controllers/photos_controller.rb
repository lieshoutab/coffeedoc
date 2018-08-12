class PhotosController < ApplicationController
  def index
    @drink = Drink.find(params[:drink_id])
    @photos = Photo.where(drink: @drink)
  end

  def new
    @drink = Drink.find(params[:drink_id])
    @photo = Photo.new(drink: @drink)
  end

  def create
    drink = Drink.find(params[:drink_id])
    photo = Photo.new(photo_params.merge(drink: drink))

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
