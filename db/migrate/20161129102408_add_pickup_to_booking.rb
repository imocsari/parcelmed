class AddPickupToBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :pickup_contact_address, :string
    add_column :bookings, :pickup_postcode, :string
    add_column :bookings, :pickup_contact_name, :string
    add_column :bookings, :pickup_contact_email, :string
    add_column :bookings, :pickup_contact_phone, :string
    add_column :bookings, :pickup_company_name, :string
    add_column :bookings, :pickup_town, :string
    add_column :bookings, :pickup_country, :string
    add_column :bookings, :pickup_county, :string
    add_column :bookings, :pickup_department, :string
  end
end
