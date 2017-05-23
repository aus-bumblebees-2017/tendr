class NeighborhoodPlace < ApplicationRecord
  belongs_to :place
  belongs_to :neighborhood
end
