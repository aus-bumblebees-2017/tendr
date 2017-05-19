class Food < ApplicationRecord
	belongs_to :place
  extend Api

  def self.populate
    places_google_ids = Place.all.pluck(:google_id)
    places_google_ids.each do |google_id|
      place = Place.find_by(google_id: google_id)
      photo_urls = fetch_photo_urls(google_id)
      Food.assign_to_place(place, photo_urls)
    end
  end

  def self.assign_to_place(place, photo_urls)
    photo_urls.each do |url|
      food = Food.create(url: url)
      place.foods << food
      place.save
    end
  end

end
