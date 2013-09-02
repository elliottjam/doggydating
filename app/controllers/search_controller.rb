class SearchController < ApplicationController

  def index

    if params[:commit]
      search_sql = []
      search_params = {}

      if params[:size] > ""
        search_sql << "dogs.size = :size"
        search_params[:size] = params[:size]
      end

      if params[:gender] > ""
        search_sql << "dogs.gender = :gender"
        search_params[:gender] = params[:gender]
      end

      if params[:breed_id] > ""
        search_sql <<"dogs.breed_id = :breed_id"
        search_params[:gender] = params[:gender]
      end

      @dogs = Dog.where(search_sql.join(' and '), search_params)



    end

  end

end
