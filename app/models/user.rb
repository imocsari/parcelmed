class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :bookings
  has_many :couriers, through: :bookings

  # after_save :async_update # Run on create & update

  private

  def async_update
    UpdateUserJob.perform_later(self.id)
  end
end
