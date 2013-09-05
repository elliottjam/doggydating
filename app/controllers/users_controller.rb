class UsersController < ApplicationController
  before_filter :authenticate_user!

  before_filter :signed_in_user, only: [:index, :edit, :update]

  def show
    @user = User.find params[:id]
 end

  def profile
    @user = current_user
    @incoming_requests = ContactRequest.where(to_id: current_user.id).unconfirmed
    @outgoing_requests = ContactRequest.where(from_id: current_user.id).unconfirmed
    @accepted_requests = ContactRequest.where("from_id = ? OR to_id = ?", current_user.id, current_user.id).accepted
  end

end
