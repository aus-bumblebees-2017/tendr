class ApiController < ApplicationController
  include HTTParty
  def index
    client = GooglePlaces::Client.new(ENV["GOOGLE_PLACES_API_KEY"])
    #you can also query by latitude and longitude client.spots(latitude, longitude)
    @restaurants = client.spots_by_query("Restaurants near Austin Texas")
    # we will probably want to iterate through that ^^ to create out place items
    @place = HTTParty.get("https://maps.googleapis.com/maps/api/place/details/json?placeid=ChIJz2Whyx61RIYR7mCeZje-QWw&key=AIzaSyAnG2uWyNz_rLoKhDb4WdWncW3zxLq8X2Y") 
    
  end

end
