class DocumentaryfilmsController < ApplicationController
  def index
  end

  def new
    #Capturamos
    @documentaryfilm= Documentaryfilm.new

  end

  def create
    #Mostramos
    @documentaryfilm= Documentaryfilm.new(documentaryfilms_params)
    @documentaryfilm.save
    pp @documentaryfilm
  end

def documentaryfilms_params
  params.require(:documentaryfilms).permit(:name, :synopsis, :director)
end
end
