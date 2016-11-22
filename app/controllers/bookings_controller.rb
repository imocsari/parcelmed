class BookingsController < ApplicationController


  def index
       @bookings = Booking.where(courier: @courier)
  end

  




end
