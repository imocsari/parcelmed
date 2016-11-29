class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :courier

  after_update :calculate_price

  monetize :amount_pennies
  enum status: [ :pending, :paid ]

  def calculate_price
    self.amount_pennies = self.weight + self.quantity + self.courier.price_for(self.temperature)
  end
end
