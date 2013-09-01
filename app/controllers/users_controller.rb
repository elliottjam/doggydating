class UsersController < ApplicationController
  before_filter :signed_in_user, only: [:index, :edit, :update]
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to Doggy Dating!"
        redirect_to @user
      else
        render 'new'
    end
  end
end
