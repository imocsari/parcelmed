class ProfileController < ApplicationController
  before_action :authenticate_user!, only: :dashboard
  before_action :set_user, except: :dashboard

  def dashboard
    @user = current_user
  end

  def dashboard_edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update_attributes(user_params)
    redirect_to dashboard
  end

  # def destroy
  #   @user = User.find(params[:id])
  #   @user.destroy
  #   redirect_to roots_path
  # end

private

  def set_user
    @user = User.find(current_user)
  end

  def user_params
    params.require(:user).permit(:company_name, :company_address, :company_department, :contact_person, :contact_number)
  end
end
