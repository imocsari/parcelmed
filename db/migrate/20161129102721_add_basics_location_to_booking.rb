class AddBasicsLocationToBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :pickup_location, :string
    add_column :bookings, :destination_location, :string
  end
end
