class DecksController < ApplicationController
  protect_from_forgery :except => [:update]
#	before_action :authenticate_user!


  def show
    @card = Food.all.sample
  end

  def create
    json = []
    @deck = Food.all.sample(10)
    @deck.each do |food|
      json_food = {
        id: food.id,
        name: food.place.name,
        url: food.url
      }
      json << json_food
    end
    respond_to do |format|
      format.json {
        render json: json
      }
    end
  end

  def update
  end

end
