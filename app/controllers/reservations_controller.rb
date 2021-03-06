class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to reservations_path
    else
      render :new
    end
  end

  private
  def reservation_params
    params.require(:reservation).permit(:day, :identification, :name, :email, :cellphone, :film_id)
  end
end
