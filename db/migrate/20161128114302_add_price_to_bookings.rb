class AddPriceToBookings < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :unit_price
    add_monetize :bookings, :amount, currency: { present:false }
  end
end
