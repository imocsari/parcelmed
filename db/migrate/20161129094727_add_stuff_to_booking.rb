class AddStuffToBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :temperature, :string
    add_column :bookings, :material_type, :string
    add_column :bookings, :data_logger, :boolean
    add_column :bookings, :shipping_container, :boolean
  end
end
