class RemovePickUpFromBooking < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :pick_up_contact_address, :string
    remove_column :bookings, :pick_up_postcode, :string
    remove_column :bookings, :pick_up_contact_name, :string
    remove_column :bookings, :pick_up_contact_email, :string
    remove_column :bookings, :pick_up_contact_phone, :string
    remove_column :bookings, :pick_up_company_name, :String
    remove_column :bookings, :pick_up_town, :string
    remove_column :bookings, :pick_up_country, :string
    remove_column :bookings, :pick_up_county, :string
    remove_column :bookings, :pick_up_department, :string
  end
end
