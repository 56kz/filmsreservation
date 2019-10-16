class FilmsController < ApplicationController

  def index
    @start_date = params[:start].try(:to_date) || 15.days.ago.to_date
    @end_date = params[:end].try(:to_date) || Date.current
    range = (@start_date..@end_date)

    @films = Film.where(presentation: range).order(presentation: :desc)
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
