class FoodsController < ApplicationController
	before_action :authenticate_user!
end
