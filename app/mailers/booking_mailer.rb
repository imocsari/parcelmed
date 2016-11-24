class BookingMailer < ApplicationMailer

  def confirmed(booking)
    @booking = booking
    @user = @booking.user

    mail(to: @user.email, subject:  "Your booking has been confirmed")
  end
end
