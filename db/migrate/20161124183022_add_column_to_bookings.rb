class AddColumnToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :terms_and_conditions, :string
  end
end
