class UsersController < ApplicationController
  load_and_authorize_resource
  before_filter :signed_in_user, only: [:index, :edit, :update]

  def show
    @user = current_user
  end

end
