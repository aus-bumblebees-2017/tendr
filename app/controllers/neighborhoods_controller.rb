class NeighborhoodsController < ApplicationController
  def update
    # NEED TO ADD CODE TO TIE TO USER
    current_user.neighborhoods.destroy_all
    params[:neighborhood].each do |hood|
      current_user.neighborhoods << Neighborhood.find(hood)
      current_user.save
    end
    binding.pry
    redirect_to decks_show_path
  end
end
