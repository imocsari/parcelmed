class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create, :show ]

  def index
    @bookings = Booking.where(courier: @courier)
  end

  def new
    # amount=10&weight=3&courier_id=13&pickup_location=12+Elder+Street%2C+London%2C+United+Kingdom&destination_location=18+Rue+Titon%2C+Paris%2C+France&temperature=frozen_20&commit=Book+Now
    @quantity = params[:amount]
    @weight = params[:weight]
    @courier = Courier.find(params[:courier_id])
    @pickup_location = params[:pickup_location]
    @destination_location = params[:destination_location]
    @temperature = params[:temperature]

    @booking = Booking.new(user: current_user, courier: @courier, status: "pending", quantity: @quantity, pick_up_contact_address: @pickup_location, destination_contact_address: @destination_location )

  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save!
      UserMailer.welcome(booking_params[:email]).deliver_now
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

private

  def booking_params
    params.require(:booking).permit(
      :status,
      :quantity,
      :extra_packaging,
      :pick_up_contact_address,
      :destination_contact_address,
      :pick_up_contact_name,
      :destination_contact_name,
      :pick_up_contact_email,
      :destination_contact_email,
      :pick_up_contact_phone,
      :destination_contact_phone,
      :special_requirements,
      :hazardous_material,
      :terms_and_conditions,
      :pick_up_postcode,
      :destination_postcode,
      :pick_up_company_name,
      :destination_company_name,
      :pick_up_town,
      :pick_up_county,
      :pick_up_country,
      :destination_town,
      :destination_county,
      :destination_country,
      :pick_up_department,
      :destination_department,
      :quantity,
      :dimension,
      :weight,
      :material_type
    )
  end
end
