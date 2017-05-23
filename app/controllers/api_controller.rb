class ApiController < ApplicationController
  include HTTParty
  include Api

  AUSTIN = { 
    :"Downtown Central" => ["Downtown", "Clarksville", "Old West Austin", "Hyde Park", "Rosedale"],
    :"South Central" => ["Bouldin", "Barton Hills", "South Lamar", "South Congress", "Travis Heights"]
    }

  def index
    AUSTIN.each do |area, hood_names|
      hood_names.each do |hood_name|
        n = Neighborhood.find_or_create_by(name: hood_name, area: area)
        Place.populate({city_or_zip: "Austin", neighborhood: hood_name, n_object: n})
      end 
    end
    Food.populate
  end

end
