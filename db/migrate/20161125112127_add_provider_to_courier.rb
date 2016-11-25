class AddProviderToCourier < ActiveRecord::Migration[5.0]
  def change
    add_reference :couriers, :provider, foreign_key: true
  end
end
