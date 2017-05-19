class DecksController < ApplicationController
  protect_from_forgery :except => [:update]
	before_action :authenticate_user!


  def show
    @card = {
      :id => 1,
      :name => "first",
      :url => 'http://lorempixel.com/200/200/food/'
    }
  end

  def create
    @deck = [];
    10.times do |count|
      @deck << {
        :id => count,
        :name => "Card #{count}",
        :url => 'http://lorempixel.com/200/200/food/'
      }
    end
    respond_to do |format|
      format.json {
        render json: @deck
      }
    end
  end

  def update
    binding.pry
  end

end
