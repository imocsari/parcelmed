class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create, :show ]

  def index
    @bookings = Booking.where(courier: @courier)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    binding.pry
    if @booking.save
      # UserMailer.welcome(booking_params[:email]).deliver_now
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(
      :temperature,
      :pickup_location,
      :destination_location,
      :quantity,
      :weight,
      :material_type,
      :data_logger,
      :extra_packaging,
      :shipping_container,
      :amount_pennies,
      :courier_id
    )
  end
end
