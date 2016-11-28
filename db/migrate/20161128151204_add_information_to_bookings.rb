class AddInformationToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :pick_up_postcode, :string
    add_column :bookings, :destination_postcode, :string
    add_column :bookings, :pick_up_company_name, :string
    add_column :bookings, :destination_company_name, :string
    add_column :bookings, :pick_up_town, :string
    add_column :bookings, :pick_up_county, :string
    add_column :bookings, :pick_up_country, :string
    add_column :bookings, :destination_town, :string
    add_column :bookings, :destination_county, :string
    add_column :bookings, :destination_country, :string
    add_column :bookings, :pick_up_department, :string
    add_column :bookings, :destination_department, :string
  end
end
