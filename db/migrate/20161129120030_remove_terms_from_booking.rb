class RemoveTermsFromBooking < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :terms_and_conditions, :string
    add_column :bookings, :terms_and_conditions, :boolean, default: false
  end
end
