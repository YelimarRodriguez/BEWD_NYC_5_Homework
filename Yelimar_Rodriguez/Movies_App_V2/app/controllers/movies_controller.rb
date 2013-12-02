class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    safe_movie = params.require(:movie).permit(:title, :description, :year_released, :rating)
    movie = Movie.create safe_movie ##.create is an active record method
    redirect_to movie
  end

  def show
    @movie = Movie.find params[:id]
  end

  def edit
    @movie = Movie.find params[:id]
  end
  def update
    #needs to find it by id & we must update it with the the info user passed in
    safe_movie = params.require(:movie).permit(:title, :description, :year_released, :rating)
    movie = Movie.find params[:id]
    movie.update safe_movie #.update is an active record method 
    redirect_to movie
  end


end
