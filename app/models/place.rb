class Place < ApplicationRecord
  has_many :foods
  has_many :neighborhood_places
  has_many :neighborhoods, through: :neighborhood_places
  extend Api

  #args options {longitude: float, latitude: float, city_or_zip: string, neighborhood: string, n_object: neighborhood object}
  def self.populate(args)
    places_info = get_places_info(args)
    places_info.each do |place_info|
      place = self.find_or_create_by(place_info)
      place.neighborhoods << args[:n_object]
    end
  end

  def get_place_metadata
    place = HTTParty.get("https://maps.googleapis.com/maps/api/place/details/json?placeid=#{self.google_id}&key=#{ENV['GOOGLE_PLACES_API_KEY']}")
    if !place["result"].empty?
      place_metadata = {
        :address => place["result"]["formatted_address"],
        :phone => place["result"]["formatted_phone_number"],
        :map => place["result"]["url"],
        :place_url => place["result"]["website"]
      }
    return place_metadata
  end
  end
end
