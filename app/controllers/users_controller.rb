class UsersController < ApplicationController
  def show
    @user = current_user
    @histories = current_user.histories
  end
end
