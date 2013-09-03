class UsersController < ApplicationController
  before_filter :authenticate_user!

  before_filter :signed_in_user, only: [:index, :edit, :update]

  def show
    @user = current_user
  end

end
