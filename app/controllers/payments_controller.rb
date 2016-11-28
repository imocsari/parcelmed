class PaymentsController < ApplicationController

  before_action :set_booking

  def new
  end

  def create
  end


  private

  def set_booking
    @booking = Booking.pending.find(params[:booking_id])
  end
end
