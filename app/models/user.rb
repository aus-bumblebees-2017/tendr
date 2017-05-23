class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :histories

  validates :user_name, presence: true,
                        case_sensitive: false
  validates :zipcode, presence: true, length: { :is => 5 }


  def favorites
    favs = []
    self.histories.each do |history|
      state = history.identify_state
      favs.push(history) if state == "Favorite"
    end
  end
end
