class DogsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  before_filter :setup_form_variables

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(params[:dog])
    @dog.user = current_user

    if @dog.save
      redirect_to @dog
    else
      render 'new'
    end
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def index
    @dogs = current_user.dogs
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])

    if @dog.update_attributes(params[:dog])
      redirect_to @dog
    else
      render 'edit'
    end
  end

    def destroy
      @dog = Dog.find(params[:id])
      @dog.destroy
      redirect_to dogs_path , confirm: "Are you sure?"
    end

  private
  def setup_form_variables
    @breeds = Breed.all
  end


end
