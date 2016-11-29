class PaymentsController < ApplicationController
  before_action :set_booking

  def new
  end

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,
      amount:       @booking.amount_pennies,
      description:  "Payment for booking #{@booking.id}",
      currency:     @booking.amount.currency

    )

    @booking.update(payment: charge.to_json, status: 'paid')
    redirect_to userbookings_path(current_user)

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_booking_payment_path(@order)
  end

  private

  def set_booking
    @booking = Booking.pending.find(params[:booking_id])
  end
end
