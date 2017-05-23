class PlacesController < ApplicationController
  before_action :authenticate_user!

  def show
    @place = Place.find(params[:id])
    @last_food = Food.find(params[:food_id])
    @place_metadata = @place.get_place_metadata
    current_user.update_attribute(:last_viewed, @last_food.id)
  end

  def
end
