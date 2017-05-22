require 'rails_helper'

class UsersControllerSpec < ActionController::TestCase

end

RSpec.describe UsersController, type: :controller do

	describe "Users" do
		before(:each) do 
			@request.env["devise.mapping"] = Devise.mappings[:admin]
		end
		it "creates a new user" do
			user = User.create!(email: "email@mail.com", password: "password", user_name: "dave11", zipcode: "11223")
			sign_in(user)
			expect(user).to be_valid
		end
		it "routes the user to profile page" do
			user = User.create!(email: "email@mail.com", password: "password", user_name: "dave11", zipcode: "11223")
			favorites = user.favorites
			
			assert_response :success
		end
	end
end
