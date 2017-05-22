class Place < ApplicationRecord
  has_many :foods
  extend Api

  #args options {longitude: float, latitude: float, city_or_zip: string }
  def self.populate(args)
    place_info = get_place_info(args)
    self.create(place_info)
  end

  def get_place_info
    place = HTTParty.get("https://maps.googleapis.com/maps/api/place/details/json?placeid=#{self.google_id}&key=#{ENV['GOOGLE_PLACES_API_KEY']}")
    place_metadata = {
      :address => place["result"]["formatted_address"],
      :phone => place["result"]["formatted_phone_number"],
      :map => place["result"]["url"],
      :place_url => place["result"]["website"]
    }
    return place_metadata
  end
end
