class ProfileController < ApplicationController
  before_action :authenticate_user!, only: :dashboard
  before_action :set_user, except: :dashboard

  def dashboard
    @user = current_user
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(params[:user])
  end

  # def destroy
  #   @user = User.find(params[:id])
  #   @user.destroy
  #   redirect_to roots_path
  # end

private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:company_name, :company_address, :company_department, :contact_person, :contact_number)
  end
end
