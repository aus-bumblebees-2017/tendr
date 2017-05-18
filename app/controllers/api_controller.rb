class ApiController < ApplicationController
  def index
    client = GooglePlaces::Client.new(ENV["GOOGLE_PLACES_API_KEY"])
    #you can also query by latitude and longitude client.spots(latitude, longitude)
    @restaurants = client.spots_by_query("Restaurants near Austin Texas")
    # we will probably want to iterate through that ^^ to create out place items
    
  end

end
