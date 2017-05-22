class Neighborhood < ApplicationRecord  
  has_many :neighborhood_places                    
  has_many :places, through: :neighborhood_places

  def self.populate(neighborhoods)
    neighborhoods.each do |area, hood_names|
      hood_names.each do |hood_name|
        self.find_or_create_by(area: area, name: hood_name)
      end
    end
  end
end
