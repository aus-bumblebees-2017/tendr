class History < ApplicationRecord
	belongs_to :food
	belongs_to :user

  def identify_state
    state = case self.state
    when 1 then "Save"
    when 2 then "Favorite"
    when 3 then "Discard"
     return state
   end
  end
end
