class BookingsController < ApplicationController


  def index
       @bookings = Booking.where(courrier: @courrier)
  end



end
