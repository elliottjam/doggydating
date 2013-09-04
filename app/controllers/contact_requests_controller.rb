class ContactRequestsController < ApplicationController
  before_filter :authenticate_user!

  def new
      @contactrequest = ContactRequest.new
  end

  def create
    @contact_request = ContactRequest.new(from_id: current_user.id, to_id: params[:user_id], status: "unconfirmed")

    if @contact_request.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def index
    @contactrequest = current_user.contactrequest
  end

  end