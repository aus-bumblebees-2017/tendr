class Food < ApplicationRecord
	belongs_to :place

  extend Api

  def self.populate
    places_google_ids = Place.all.pluck(:google_id)
    places_google_ids.each do |google_id|
      place = Place.find_by(google_id: google_id)
      photo_urls = fetch_photo_urls(google_id)
      p photo_urls
      if photo_urls != nil 
        if photo_urls.length > 0
          Food.assign_to_place(place, photo_urls)
        end
      end
    end
  end

  def self.assign_to_place(place, photo_urls)
    if photo_urls.length > 0
      photo_urls.each do |url|
        food = Food.find_or_create_by(url: url)
        place.foods << food
        place.save
      end
    end
  end

end
