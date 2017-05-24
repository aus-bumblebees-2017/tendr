class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :histories

  has_many :neighborhood_users
  has_many :neighborhoods, through: :neighborhood_users

  validates :user_name, presence: true,
                        case_sensitive: false


  def favorites
    favs = []
    self.histories.each do |history|
      state = history.identify_state
      favs.push(history) if state == "Favorite"
    end
  end

  def start_card
    card_sample = []
    if self.neighborhoods.empty?
      return Food.all.sample
    else
      self.neighborhoods.each do |neighborhood|
        neighborhood.places.each do |place|
          place.foods.each do |food|
            card_sample << food
          end
        end
      end
    end
    card_sample.sample
  end

  def build_deck
    json = []
    if self.neighborhoods.empty?
      Food.all.each do |food|
        json_food = {
          id: food.id,
          name: food.place.name,
          url: food.url,
          place_id: food.place.id
        }
        json << json_food
      end
    else
      self.neighborhoods.each do |neighborhood|
        neighborhood.places.each do |place|
          place.foods.each do |food|
            json_food = {
              id: food.id,
              name: food.place.name,
              url: food.url,
              place_id: food.place.id
            }
            json << json_food
          end
        end
      end
    end
    json.shuffle
  end
end
