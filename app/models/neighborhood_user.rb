class NeighborhoodUser < ApplicationRecord
  belongs_to :user
  belongs_to :neighborhood
end
