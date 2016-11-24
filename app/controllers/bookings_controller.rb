class BookingsController < ApplicationController


  def index
       @bookings = Booking.where(courier: @courier)
  end

  def new
  @booking = Booking.new
  @user = User.new
  end

  def create
      @booking = Booking.new(booking_params)
  end
end
