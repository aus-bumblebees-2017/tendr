class GetPlacesJob < ApplicationJob
  def perform()
    @client = GooglePlaces::Client.new(ENV["GOOGLE_PLACES_API_KEY"])
    restaurants = @client.spots(latitude, longitude)
    return restaurants
  end
end