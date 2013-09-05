class StaticPagesController < ApplicationController
  def home
    @dogs = Dog.all
  end

  def help
  end

   def about
  end

  def contact
  end

end
