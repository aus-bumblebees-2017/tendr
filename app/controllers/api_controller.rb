class ApiController < ApplicationController
  include HTTParty
  include Api


  def index
    Place.populate({city_or_zip: "Austin"})
    Food.populate
  end

end
