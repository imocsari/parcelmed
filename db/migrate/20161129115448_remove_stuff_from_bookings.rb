class RemoveStuffFromBookings < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :destination_contact_address, :string
    remove_column :bookings, :destination_town, :string
    remove_column :bookings, :destination_country, :string
    remove_column :bookings, :destination_county, :string
    remove_column :bookings, :pickup_contact_address, :string
    remove_column :bookings, :pickup_town, :string
    remove_column :bookings, :pickup_country, :string
    remove_column :bookings, :pickup_county, :string
  end
end
