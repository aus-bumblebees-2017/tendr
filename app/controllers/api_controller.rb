class ApiController < ApplicationController
  def index
    # @client = GooglePlaces::Client.new($GOOGLE_PLACES_API_KEY)
    google_api = ENV["GOOGLE_PLACES_API_KEY"]
    client = GooglePlaces::Client.new(google_api)
    #@client.spots(latitude, longitude) is another option
    @restaurants = client.spots_by_query("Restaurants near Austin Texas")
  end

end
