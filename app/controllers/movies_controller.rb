class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    #Capturamos
    @movie= Movie.new

  end

  def create
    #Mostramos
    @movie= Movie.new(movies_params)
    @movie.save
    pp @movie
  end

def movies_params
  params.require(:movie).permit(:name, :synopsis, :director)
end

end
