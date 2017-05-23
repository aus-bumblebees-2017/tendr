class NeighborhoodsController < ApplicationController
  def update
    current_user.neighborhoods.destroy_all
    params[:neighborhood].each do |hood|
      current_user.neighborhoods << Neighborhood.find(hood)
      current_user.save
    end
    redirect_to decks_show_path
  end
end
