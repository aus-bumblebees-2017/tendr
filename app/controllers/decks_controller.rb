class DecksController < ApplicationController
  protect_from_forgery :except => [:update]
  before_action :authenticate_user!

  def show
    if current_user.last_viewed
      @card = Food.find_by(id: current_user.last_viewed)
      current_user.update_attribute(:last_viewed, nil)
    else
      @card = current_user.start_card
    end
  end

  def create
    json = current_user.build_deck
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
