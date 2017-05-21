class PlacesController < ApplicationController
  before_action :authenticate_user!

  def show
    @place = Place.find(params[:id])
    @place_metadata = @place.get_place_info
    current_user.last_viewed = @place.id
  end
end
