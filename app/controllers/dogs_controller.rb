class DogsController < ApplicationController
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

  private
  def setup_form_variables
    @breeds = Breed.all
  end


end
