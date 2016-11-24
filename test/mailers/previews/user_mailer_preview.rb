class UserMailerPreview < ActionMailer::Preview
  def welcome
    user = User.find(1)
    UserMailer.welcome(user)
  end
end
