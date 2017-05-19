class HistoriesController < ApplicationController
	before_action :authenticate_user!

  def index
    @histories = current_user.histories.order(created_at: :desc).limit(30)
  end
end
