class ContactRequestsController < ApplicationController
  before_filter :authenticate_user!

  def new
      @contactrequest = ContactRequest.new
  end

  def create
    @contact_request = ContactRequest.create(from_id: current_user.id, to_id: params[:user_id], status: "unconfirmed")

    respond_to do |format|
      format.js
      format.html do
        redirect_to search_index_path
      end
    end

  end

  def reject
    @contactrequest = ContactRequest.find(params[:id])
    @contactrequest.status = "rejected"
    if @contactrequest.save
      redirect_to profile_path
    else
      redirect_to profile_path
    end
  end

  def accept
    @contactrequest = ContactRequest.find(params[:id])
    @contactrequest.status = "accepted"
    if @contactrequest.save
      redirect_to profile_path
    else
      redirect_to profile_path
    end
  end

  def cancel
    @contactrequest = ContactRequest.find(params[:id])
    @contactrequest.destroy
      redirect_to profile_path
  end
 end