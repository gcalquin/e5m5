class SeriesController < ApplicationController
  def index
  end

  def new
    #Capturamos
    @serie= Serie.new

  end

  def create
    #Mostramos
    @serie= Serie.new(series_params)
    @serie.save
    pp @serie
  end

def series_params
  params.require(:serie).permit(:name, :synopsis, :director)
end
end
