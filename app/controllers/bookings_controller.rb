class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create, :show, :update ]

  def index
    @bookings = Booking.where(courier: @courier)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params_create)
    @booking.calculate_price
    @booking.user = current_user
    if @booking.save
      # UserMailer.welcome(booking_params[:email]).deliver_now
      redirect_to edit_booking_path(@booking)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params_update)
      redirect_to booking_path(@booking)
    else
      render :edit
    end
  end

  private

  def booking_params_create
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

  def booking_params_update
    params.require(:booking).permit(
      :pickup_location,
      :pickup_postcode,
      :pickup_contact_name,
      :pickup_contact_phone,
      :pickup_contact_email,
      :pickup_company_name,
      :pickup_department,
      :destination_location,
      :destination_postcode,
      :destination_contact_name,
      :destination_contact_phone,
      :destination_contact_email,
      :destination_company_name,
      :destination_department,
      :special_requirements,
      :hazardous_material,
      :terms_and_conditions
    )
  end
end


