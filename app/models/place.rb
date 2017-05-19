class Place < ApplicationRecord
	has_many :foods
  extend Api
  
  #args options {logitude: float, latitude: float, city_or_zip: string }
  def self.populate(args)
    place_info = get_place_info(args)
    self.create(place_info)
  end

end
