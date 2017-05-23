class WelcomeController < ApplicationController

  def index
    @food = Food.all.sample
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
