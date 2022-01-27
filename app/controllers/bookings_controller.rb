class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @profesionnel = Profesionnel.find(params[:profesionnel_id])
  end

  def show
    @profesionnel = Profesionnel.find(params[:profesionnel_id])
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @profesionnel = Profesionnel.find(params[:profesionnel_id])
  end

  def create
    @booking = Booking.new(book_params)
    @profesionnel = Profesionnel.find(params[:profesionnel_id])
    @booking.profesionnel = @profesionnel
    @booking.user = current_user
    if @booking.save
      redirect_to profesionnel_bookings_path(@profesionnel, @booking)
    else
      render 'new'
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    @profesionnel = Profesionnel.find(params[:profesionnel_id])
  end

  def update
    @booking = Booking.find(params[:id])
    @profesionnel = Profesionnel.find(params[:profesionnel_id])
    @booking.update(book_params)
    redirect_to profesionnel_booking_path(@booking, @profesionnel)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @profesionnel = Profesionnel.find(params[:profesionnel_id])
    @booking.destroy
    redirect_to profesionnel_booking_path(@booking, @profesionnel)
  end

  private
  
  def book_params
    params.require(:booking).permit(:date_resa, :total_resa)
  end
end
