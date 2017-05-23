class Neighborhood < ApplicationRecord
  has_many :neighborhood_places
  has_many :places, through: :neighborhood_places
  has_many :neighborhood_users
  has_many :users, through: :neighborhood_users

  def self.populate(neighborhoods)
    neighborhoods.each do |area, hood_names|
      hood_names.each do |hood_name|
        self.find_or_create_by(area: area, name: hood_name)
      end
    end
  end

  def self.get_areas
    return Neighborhood.group(:area).select('area')
  end

  def self.get_neighborhood_by_area(area)
    return Neighborhood.where("area = '#{area}'")
  end
end
