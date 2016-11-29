class AddWeightToBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :weight, :float
  end
end
