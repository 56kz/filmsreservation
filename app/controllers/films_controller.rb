class FilmsController < ApplicationController

  def index
    @films = Film.all
  end

  def new
    @film = Film.new
  end

  def create
    @film = Film.new(film_params)
    if @film.save
      redirect_to films_path
    else
      render :new
    end
  end

  private
  def film_params
    params.require(:film).permit(:name, :description, :url, :presentation)
  end
end
