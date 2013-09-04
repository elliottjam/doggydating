class UsersController < ApplicationController
  before_filter :authenticate_user!

  before_filter :signed_in_user, only: [:index, :edit, :update]

  def show
    @user = current_user
    @incoming_requests = ContactRequest.where(to_id: current_user.id)
    @outgoing_requests = ContactRequest.where(from_id: current_user.id)
  end



end
