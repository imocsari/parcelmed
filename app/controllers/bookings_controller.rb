class BookingsController < ApplicationController


  def index
       @bookings = Booking.where(courrier: @courrier)
  end

  def create
      @booking = Booking.new(booking_params)
  end

end
