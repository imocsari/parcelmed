class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :courier

  monetize :amount_pennies
  enum status: [ :pending, :paid ]



end
