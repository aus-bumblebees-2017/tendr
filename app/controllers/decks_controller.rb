class DecksController < ApplicationController
  protect_from_forgery :except => [:update]
  before_action :authenticate_user!

  def show
    binding.pry
    if current_user.last_viewed
      @card = Food.find_by(id: current_user.last_viewed)
      current_user.update_attribute(:last_viewed, nil)
    else
      @card = Food.all.sample
    end
  end

  def create
    json = []
    @deck = Food.all.sample(10)
    @deck.each do |food|
      json_food = {
        id: food.id,
        name: food.place.name,
        url: food.url,
        place_id: food.place.id
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
    @food = Food.find_by(id: params[:id])
    @history = History.create(food: @food, user: current_user, state: params[:card_state])
    respond_to do |format|
      format.json { render json: { id: params[:id]} }
    end
  end
end
