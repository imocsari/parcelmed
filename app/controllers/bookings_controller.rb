class BookingsController < ApplicationController


  def index
       @bookings = Booking.where(courier: @courier)
  end

  def new
  @booking = Booking.new
  end

  def create
      @booking = Booking.new(booking_params)
      if @booking.save!
      UserMailer.welcome(booking_params[:email]).deliver_now
      redirect_to booking_path(@booking)
    end
  end
end
