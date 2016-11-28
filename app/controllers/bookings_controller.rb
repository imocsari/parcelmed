class BookingsController < ApplicationController


  def index
    @bookings = Booking.where(courier: @courier)
  end

  def new
    @booking = Booking.new
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
      :destination_department
    )
  end
end
