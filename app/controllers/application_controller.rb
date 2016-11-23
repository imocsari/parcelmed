class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  # before_action :sign_up_params, if: :devise_controller?
 # before_action :account_update_params, if: :devise_controller?



#
#  private

#  def sign_up_params
#    params.require(:user).permit(:company_name, :company_address, :department, :contact_person, :contact_number, :email, :password, :password_confirmation)
#  end

#  def account_update_params
#    params.require(:user).permit(:company_name, :company_address, :department, :contact_person, :contact_number, :email, :password, :password_confirmation)
#  end
#


before_action :configure_permitted_parameters, if: :devise_controller?

 def configure_permitted_parameters
   # For additional fields in app/views/devise/registrations/new.html.erb
   devise_parameter_sanitizer.permit(:sign_up, keys: [:company_name, :company_address, :department, :contact_person, :contact_number, :email, :password, :password_confirmation])
 end
end
