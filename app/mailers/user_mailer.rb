class UserMailer < ApplicationMailer


  def welcome(email)
  attachments.inline['logo-parcelmed.png'] = File.read('app/assets/images/logo-parcelmed.png')
  mail to: email, subject: "Thanks for signing up with Parcelmed!"
  end

  def creation_confirmation(user)
    @user = user

    mail(
      to:       @user.email,
      subject:  "Your account has been created!"
    )
  end
end
