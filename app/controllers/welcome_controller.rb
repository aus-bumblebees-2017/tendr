class WelcomeController < ApplicationController

  def index
    food_pics = [50, 75, 77, 90, 119]
    @food = Food.find_by(id: food_pics.sample)
  end

  def show_deck
  end

  def show_details
  end

  def show_history
  end

  def show_user
  end
end
