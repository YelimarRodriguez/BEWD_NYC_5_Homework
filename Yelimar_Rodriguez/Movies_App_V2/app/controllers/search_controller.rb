class SearchController < ApplicationController
  def index
    query = params[:q]
    @movies = Movie.where('title LIKE :query OR description LIKE :query OR year_released LIKE :query', query: "%#{query}%")
  end
end


# t.string :title
#       t.text :description
#       t.integer :year_released
#       t.integer :rating